#!/bin/bash

# get value of an argument option, usage:
# alarm_getopt <arg_name> <multiple_values?1|0> <string>
# eg: alarm_getopt packages 1 $@
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
			return
		fi
	done < <(util_parse_yaml $1)
}

add_language(){
	echo ""
}

check_language(){
	echo ""
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

case $1 in
	'add' )
    shift
    add_language $@
    exit
    ;;
  'check' )
    shift
    check_language $@
    exit
    ;;
  'list' )
    shift
    list_languages $@
    exit
    ;;
	'yaml-get' )
		shift
		util_parse_yaml_get $1 $2
		exit
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
    echo -e "  ${g}check${d}   Verify the status of a language translation."
    echo -e "  ${g}list${d}    List site translations."
    echo -e "  ${g}help${d}    Print this help."
    exit
    ;;
esac

