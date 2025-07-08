#!/bin/bash

## A.Does the work
# Generate phrase "N" times

phrase_generator(){
	for (( i=0; i<"${1}"; i++ )); do
		echo $2
	done 
}

# B.Parse input from the CLI

while [[ $# -gt 1 ]]; do
	key="${1}"

	case $key in
		-c|--count)
		COUNT="${2}"
		shift
		;;
	-p|--phrase)
		PHRASE="${2}"
		shift
		;;
	esac
	shift
done

# C.Pass parsed input to function and run everything

phrase_generator "${COUNT}" "${PHRASE}"
