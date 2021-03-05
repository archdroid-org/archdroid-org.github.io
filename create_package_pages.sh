#!/bin/bash

set -e

name="\"name\":"

while IFS="" read -r line || [ -n "${line}" ]
do
	if [[ ${line} == *${name}* ]]; then
		tempstr=${line/${name}/}
		pkgname=$(echo ${tempstr} | sed -e 's/[\",]//g')
		dir="packages/${pkgname}"
		index="${dir}/index.md"
		[[ -d ${dir} ]] || mkdir -p ${dir}
		if [[ ! -f "${index}" ]]; then
			cat <<EOF >${index}
---
layout: "archdroid/package"
---
EOF
		fi
	fi
done < _data/packages.json
