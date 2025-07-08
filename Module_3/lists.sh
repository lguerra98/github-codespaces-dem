#!/bin/bash

declare -a array=("banana" "apple" "cherry")

for i in "${array[@]}"; do
	echo "This ${i} is delicious"
done
