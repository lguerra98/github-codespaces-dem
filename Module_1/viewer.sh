#!/bin/bash
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
	echo "Usage: viewer.sh <file1> [file2 file3 ...]"
	echo
	echo "This script display content and metadata of given files"
	echo
	echo "Arguments"
	echo " fileN	One or more file paths to inspect"
	echo
	echo "Options:"
	echo " -h, --help	Show this help message"
	echo
	exit 0
fi
# Usage: viewer.sh <file>

#FILE="$1"

#read -p "Enter the file name (or type exit to quit): " FILE

for FILE in "$@"; do
	
	if [[ -z "$FILE" ]]; then
		echo "Skipped: Empty file name"
		continue
	fi

	if [ -e "$FILE" ]; then

		# Check if the file exists
		if [ -d "$FILE" ]; then
			echo "Directory (not a file) - skipping..."
			
		elif [ ! -f "$FILE" ]; then
			echo "Exists, but is not a regular file or directory"
			# exit 1
			
		else
			# Output file content
			echo "Content of $FILE:"
			cat "$FILE"

			# Show file info
			echo -e "\nFile info:"
			ls -l "$FILE"

			# Show file size
			echo -e "\nFile Size:"
			stat -c "%s bytes" "$FILE" 

			# Timestamp
			echo -e "\nLast Modified:"
			date -r "$FILE" +"%Y-%m-%d %T"

		fi
	else
		echo "File does not exists"
	fi
done
