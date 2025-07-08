#!/bin/bash

process_csv(){
	# CSV processing logic
	echo "Parsing CSV..."

	# Print number of records
	echo "Records processed: $( wc -l < $1 )"
}

if [ ${#} -lt 1 ]; then
	echo "Usage: csv_tool <options> <file>"
else
	FILES=()
	while [ -n "${1}" ]; do
		case "${1}" in
			-f)
			shift
			FILES+=($1)
			;;
		*)
			break
			;;
		esac
		shift
	done

	for FILE in "${FILES[@]}"; do
		process_csv $FILE
	done
		
fi
