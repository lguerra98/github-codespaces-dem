#!/bin/bash
declare -a array=("apple" "pear" "cherry" "strawberry")

for i in "${array[@]}"; do
	echo "This ${i} is delicious!"
done

