#!/bin/bash

# Get value of an argument option, usage:
# util_getopt <arg_name> <multiple_values?1|0> <string>
# eg: util_getopt packages 1 $@
util_getopt(){
	local option_single="-$1"
	local option_double="--$1"
	local multiple="$2"

	while [ "$3" ]; do
		case "$3" in
			"$option_single" | "$option_double" )
					local value=""
					while [ "$3" ]; do
							shift
							if ! echo "$3" | grep -E "^\-" > /dev/null ; then
									value="$value $3"
							else
									break
							fi
							if [ "$multiple" = "0" ]; then
									break
							fi
					done
					value=$(echo $value | xargs)
					if [ "$value" != "" ]; then
							echo "$value"
							return 0
					fi
					return 1
					;;
			esac

		shift
	done
}

# Check if a command line flag is set, usage:
# util_flagset <flag-short-name> <flag-long-name> <arguments-to-check>
# eg: util_getopt i interactive $@
util_flagset(){
	local option_single="-$1"
	local option_double="--$2"

	while [ "$3" ]; do
		case "$3" in
			"$option_single" | "$option_double" )
					return 0
					;;
			esac
		shift
	done

	return 1
}

# Converts a yaml file into a key=value pairs for easy bash parsing.
# Taken from: https://stackoverflow.com/a/21189044/560027
# @param file
function util_parse_yaml() {
   local prefix=$2
   local s='[[:space:]]*' w='[a-zA-Z0-9_]*' fs=$(echo @|tr @ '\034')
   sed -ne "s|^\($s\):|\1|" \
        -e "s|^\($s\)\($w\)$s:$s[\"']\(.*\)[\"']$s\$|\1$fs\2$fs\3|p" \
        -e "s|^\($s\)\($w\)$s:$s\(.*\)$s\$|\1$fs\2$fs\3|p"  $1 |
   awk -F$fs '{
      indent = length($1)/2;
      vname[indent] = $2;
      for (i in vname) {if (i > indent) {delete vname[i]}}
      if (length($3) > 0) {
         vn=""; for (i=0; i<indent; i++) {vn=(vn)(vname[i])("_")}
         printf("%s%s%s=\"%s\"\n", "'$prefix'",vn, $2, $3);
      }
   }'
}

# Get the value of a specific yaml property.
# @param file
# @param property in the form root_child_subchild
function util_parse_yaml_get(){
	if [ "$2" = "" ]; then
		util_parse_yaml $1
		return
	fi

	while read -r line; do
		local name=$(echo "$line" | cut -d"=" -f1)
		if [ "$name" = "$2" ]; then
			echo "$line" | cut -d"=" -f2 | sed 's/^"//;s/"$//'
			return 0
		fi
	done < <(util_parse_yaml $1)

	return 1
}

add_language(){
	if [ "$1" = "" ] || [ "$2" = "" ]; then
		echo "Please provide a language code and language name, eg:"
		echo ""
		echo "  site translation add es Spanish"
		return 1
	fi
	local lang_code="$1"
	local lang_name="$2"

	if [ -e "./_data/locale/$lang_code" ]; then
		echo "Error: the language already exists."
		return 1
	fi

	local default_lang=$(util_parse_yaml_get _config.yml locale_default)

	if [ ! -e _data/locale/"$default_lang" ]; then
		echo "Error: the default language doesn't exists."
		return 1
	fi

	cp -a _data/locale/"$default_lang" _data/locale/"$lang_code"

	sed -i 's/^name: *"\(.*\)"/name: "'"$lang_name"'"/' \
		_data/locale/"$lang_code"/translation.yml

	if [ ! -e "$lang_code" ]; then
		mkdir "$lang_code"
		cp "$default_lang/index.md" "$lang_code/"
	fi

	if [ ! -e "assets/i18n/$lang_code.json" ]; then
		cp assets/i18n/en.json "assets/i18n/$lang_code.json"
	fi

	echo "Language successfully added!"
	echo ""
	echo "You can start by translating the files:"
	echo "  _data/locale/$lang_code/layout.yml"
	echo "  _data/locale/$lang_code/translation.yml"
	echo "  assets/i18n/$lang_code.json"
	echo "  $lang_code/index.md"
	echo ""
	echo "Then you can run 'site translation check $lang_code'"
	echo "to see the content that needs to be translated or"
	echo "'site translation check $lang_code --interactive'"
	echo "in order to interactively translate the content"
	echo "while it is been checked up."
	echo ""
	echo "Make sure to set the EDITOR environment variable to point"
	echo "to the editor that you will be using for the editing work."

	return 0
}

delete_language(){
	if [ "$1" = "" ]; then
		echo "Please provide a language code, eg:"
		echo ""
		echo "  site translation rm es"
		return 1
	fi

	local lang_code="$1"

	if [ ! -e "./_data/locale/$lang_code" ]; then
		echo "Error: the language '$lang_code' does not exists."
		return 1
	fi

	echo "This process will remove the entire language from the site."
	echo -n "Are you sure you want to continue? [y/N]: "
	local answer=""
	read answer
	case $answer in
		'y' | 'Y' )
			rm -rf ./_data/locale/"$lang_code"
			rm -rf "$lang_code"
			rm -f "assets/i18n/$lang_code.json"
			echo "Language '$lang_code' removed."
			return 0
			;;
	esac

	return 1
}

list_languages(){
	local languages=$(
		find _data/locale/ -maxdepth 1 -type d | tail -n+2 | cut -d"/" -f3
	)

	local language=""
	for language in $languages; do
		local name=$(
			grep -E "^name: " _data/locale/$language/translation.yml \
				| cut -d":" -f2 | sed 's|"||g;s| ||g'
		)

		echo "$language:$name"
	done
}

check_language(){
	local lang_code="$1"
	local languages=$(list_languages | cut -d":" -f1)
	local interactive="0"
	local default_lang=$(util_parse_yaml_get _config.yml locale_default)

	if [ "$lang_code" = "" ] || ! echo "$languages" | grep "$lang_code" > /dev/null; then
		echo "The language code you gave doesn't exists."
		return 1
	fi

	if util_flagset i interactive $@ ; then
		interactive="1"

		if [ "$EDITOR" = "" ] || ! which "$EDITOR" > /dev/null; then
			echo "Error: please set a text editor command in EDITOR envar."
			return 1
		fi
	fi

	local answer=""

	echo "Checking status of translations..."
	while read -r dir <&3; do
		if ! echo "$languages" | grep "$dir" > /dev/null; then
			if [ "$interactive" = "1" ]; then
				echo "  Found directory '$dir' what do you want to do?"
				echo -n "  (c)heck, (s)kip [c/S]: "
				read answer
				case $answer in
					'c' | 'C' )
						echo "  Checking '$dir'..."
						;;
					* )
						continue
						;;
				esac
			fi
			while read -r file <&4; do
				local file_target=$(echo "$file" | sed "s/^$default_lang\///")
				if [ ! -e "$lang_code/$file_target" ]; then
					echo "  Missing translation for '$file'"
					if [ "$interactive" = "1" ]; then
						echo "    What do you want to do?"
						echo -n "    (c)opy, (k)copy and edit, (s)kip [c/k/S]: "
						read answer
						case $answer in
							'c' | 'C' )
								local dirpart=$(dirname $file_target)
								mkdir -p "$lang_code/$dirpart"
								cp -a "$file" "$lang_code/$dirpart"
								;;
							'k' | 'K' )
								local dirpart=$(dirname $file_target)
								mkdir -p "$lang_code/$dirpart"
								cp -a "$file" "$lang_code/$dirpart"
								$EDITOR "$lang_code/$file_target"
								;;
						esac
					fi
				else
					local current_md5=$(md5sum "$file" | cut -d" " -f1)
					local translation_md5=$(md5sum "$lang_code/$file_target" | cut -d" " -f1)
					if [ "$current_md5" = "$translation_md5" ]; then
						echo "  Warning, '$lang_code/$file_target' hasn't been translated"
						if [ "$interactive" = "1" ]; then
							echo "    What do you want to do?"
							echo -n "    (e)dit, (s)kip [e/S]: "
							read answer
							case $answer in
								'e' | 'E' )
									$EDITOR "$lang_code/$file_target"
									;;
							esac
						fi
					fi
				fi
			done 4< <(find "$dir" -name "*.md")
		fi
	done 3< <(
		find $default_lang -maxdepth 1 -type d \
			| sed 's/^\.\///' \
			| grep -Ev "^_|.git|^images|^assets|^node_modules" \
			| tail -n+2
	)

	return 0
}

sync_language(){
	local lang_code="$1"
	local languages=$(list_languages | cut -d":" -f1)
	local interactive="0"
	local default_lang=$(util_parse_yaml_get _config.yml locale_default)

	if [ "$lang_code" = "" ] || ! echo "$languages" | grep "$lang_code" > /dev/null; then
		echo "The language code you gave doesn't exists."
		return 1
	fi

	if util_flagset i interactive $@ ; then
		interactive="1"
	fi

	local answer=""

	echo "Syncing '$lang_code' with default translation files..."
	while read -r dir <&3; do
		if ! echo "$languages" | grep "$dir" > /dev/null; then
			if [ "$interactive" = "1" ]; then
				echo "  Found directory '$dir' what do you want to do?"
				echo -n "  (c)heck, (s)kip [c/S]: "
				read answer
				case $answer in
					'c' | 'C' )
						echo "  Checking '$dir'..."
						;;
					* )
						continue
						;;
				esac
			fi
			while read -r file <&4; do
				local file_target=$(echo "$file" | sed "s/^$default_lang\///")
				if [ ! -e "$lang_code/$file_target" ]; then
					if [ "$interactive" = "1" ]; then
						echo "    What do you want to do?"
						echo -n "    (c)opy, (s)kip [c/S]: "
						read answer
						case $answer in
							'c' | 'C' )
								local dirpart=$(dirname $file_target)
								mkdir -p "$lang_code/$dirpart"
								cp -a "$file" "$lang_code/$dirpart"
								;;
						esac
					else
						echo "  Copying '$file' to '$lang_code'."
						local dirpart=$(dirname $file_target)
						mkdir -p "$lang_code/$dirpart"
						cp -a "$file" "$lang_code/$dirpart"
					fi
				fi
			done 4< <(find "$dir" -name "*.md")
		fi
	done 3< <(
		find $default_lang -maxdepth 1 -type d \
			| sed 's/^\.\///' \
			| grep -Ev "^_|.git|^images|^assets|^node_modules" \
			| tail -n+2
	)

	return 0
}

case $1 in
	'add' )
    shift
    add_language $@
    exit $?
    ;;
	'rm' )
    shift
    delete_language $@
    exit $?
    ;;
  'check' )
    shift
    check_language $@
    exit $?
    ;;
  'list' )
    shift
    list_languages $@
    exit $?
    ;;
	'sync' )
    shift
    sync_language $@
    exit $?
    ;;
	'yaml-get' )
		shift
		util_parse_yaml_get $1 $2
		exit $?
		;;
  * )
    script_name=$(basename $0 | sed "s/\.sh$//")
    g="\e[32m" # green
    d="\e[0m"  # default
    echo "Helper tool to administer the site translations."
    echo ""
    echo "Usage: $script_name [COMMAND] [<parameter>]"
    echo ""
    echo "Available Commands:"
    echo ""
    echo -e "  ${g}add${d}     Add new language."
		echo -e "          Params: <lang-code> <lang-name>"
		echo -e "  ${g}rm${d}      Deletes a language."
		echo -e "          Params: <lang-code>"
    echo -e "  ${g}check${d}   Verify the status of a language translation."
		echo -e "          Params: <lang-code>"
		echo -e "          Flags:  -i | --interactive"
    echo -e "  ${g}list${d}    List site translations."
    echo -e "  ${g}sync${d}    Syncs a given language with system default."
		echo -e "          Params: <lang-code>"
		echo -e "          Flags:  -i | --interactive"
    echo -e "  ${g}help${d}    Print this help."
    exit
    ;;
esac

