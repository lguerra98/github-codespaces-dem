#!/bin/bash

average(){
	local total=0
	local count=0

	for num in "$@"; do
		total=$((total + num))
		((count++))
	done

	if [[ $count -eq 0 ]]; then
		echo "No numbers provided"
		return 1
	fi

	echo "scale=3; ${total}/${count}" | bc

}

max(){
	local max=$1
	shift

	for num in "${@}"; do
		if [[ $num -gt $max ]]; then
			max=$num
		fi
	done

	echo "${max}"
}

is_integer(){
	if [[ "${1}" =~ ^-?[0-9]+$ ]]; then
		echo "True"
	else
		echo "False"
	fi
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
	echo "Average of 10 20 30: $(average 10 20 30)"
	echo "Max of 5 2 9 1: $(max 5 2 9 1)"
	echo "Check if 33 is integer: $(is_integer 33)"
fi
