#!/bin/bash

# echo "How many lines do you want?"
# read LINES

COUNT=1
while [ $COUNT -le $1 ]; do
	echo "${COUNT} ${RANDOM}" >> file.txt
	((COUNT++))
done
