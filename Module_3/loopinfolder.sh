#!/bin/bash

if [ ! -d $1 ]; then
	echo "Directory ${1} does not exists" >&2
	exit 1
fi

ls $1 | while read -r FILE 
do
	echo "Processing file: ${FILE}"
done

for FILE in $1/*; do

	echo "Processing file: ${FILE}"
done
