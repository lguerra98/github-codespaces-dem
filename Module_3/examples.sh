#!/bin/bash

function preview_file(){
	head -n 5 $1

	tail -n 5 $1
}

if [[ ${BASH_SOURCE[0]} == ${0} ]]; then
	if [[ $# -ne 1 ]]; then
		echo "Usage: ${0} <file>"
		exit 1
	fi
	file="${1}"

	preview_file "$file"
fi

