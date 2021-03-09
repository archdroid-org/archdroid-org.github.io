#!/bin/bash

set -e

changes=1

echo "Checking for packages that have been removed..."
while read -r package
do
	if [ "$package" = "" ]; then
		continue
	fi
	if ! grep "\"name\": \"$package\"" _data/packages.json > /dev/null ; then
		echo "  Removing $package."
		changes=0
		git rm -r packages/"$package" > /dev/null 2>&1
		rm -rf packages/"$package"
	fi
done < <(find packages -maxdepth 1 -type d | tail -n +2 | cut -d"/" -f2)

name="\"name\": "

echo "Checking for new packages..."
while IFS="" read -r line || [ -n "${line}" ]
do
	if [[ ${line} == *${name}* ]]; then
		tempstr=${line/${name}/}
		pkgname=$(echo ${tempstr} | sed -e 's/[\",]//g')
		dir="packages/${pkgname}"
		index="${dir}/index.md"
		[[ -d ${dir} ]] || mkdir -p ${dir}
		if [[ ! -f "${index}" ]]; then
			echo "  Adding $pkgname."
			cat <<EOF >${index}
---
layout: "archdroid/package"
---
EOF
			changes=0
		fi
	fi
done < _data/packages.json

# return false if no changes occurred.
exit $changes
