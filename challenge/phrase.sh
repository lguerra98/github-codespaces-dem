#!/bin/bash

# Count - Number of times to print phrase
count=5

# Phrase - Message to print
phrase="I wanna die"

# Reverse - Wether to reverse string
reverse=0

# Concatenate - Wether to concatenate output
concat=0

# Delimiter - Delimiter to use if concatenate
del=""

# Capitalize - Wether to print message in upper case
cap=0

# Phrase options
while [[ $# -gt 0 ]]; do
	key="${1}"
	case $key in
		-c|--count)
			count="${2}"
			shift
			;;
		-p|--phrase)
			phrase="${2}"
			shift
			;;
		-r|--reverse)
			reverse=1
			# shift
			;;
		-C|--concatenate)
			concat=1
			# shift
			;;
		-U|--capitalize)
			cap=1
			;;
		-d|--delimiter)
			del="${2}"
			shift
			;;

	esac
	# echo "${1} ${2} ${reverse} ${concat}"
	shift
done

# Generate phrase
for ((i=0; i<=$count; i++)); do

	# Reverse phrase if reverse flag set
	if [ $reverse -eq 1 ]; then
		if [ $concat -eq 1 ]; then
			if [ $cap -eq 1 ]; then
				x=`echo ${i}%2 | bc`
				if [ $x -eq 1 ]; then
					echo -n "${phrase}${del}" | rev | tr '[:lower:]' '[:upper:]'
				else
					echo -n "${phrase}${del}" | rev
				fi
			else
				
				# rev_phrase=$`(echo -n $phrase | rev)`
				echo -n "${phrase}${del}" | rev
			fi
		else
			if [ $cap -eq 1 ]; then
				x=`echo ${i}%2 | bc`
				if [ $x -eq 1 ]; then
					echo "${phrase}${del}" | rev | tr '[:lower:]' '[:upper:]'
				else
					echo "${phrase}${del}" | rev
				fi
			else
				
				echo "${phrase}" | rev
			fi
		fi
		
		
	else
		if [ $concat -eq 1 ]; then

			if [ $cap -eq 1 ]; then
				x=`echo ${i}%2 | bc`
				if [ $x -eq 1 ]; then
					echo -n "${phrase}${del}" | tr '[:lower:]' '[:upper:]'
				else
					echo -n "${phrase}${del}"
				fi
			else
				
				echo -n "${phrase}${del}" 
			fi
		else
			if [ $cap -eq 1 ]; then
				x=`echo ${i}%2 | bc`
				if [ $x == 1 ]; then
					echo "${phrase}" | tr '[:lower:]' '[:upper:]'
				else
					echo "${phrase}"
				fi
				
			else
				
				echo "${phrase}" 
			fi
		fi
	fi
done
