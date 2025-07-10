#!/bin/bash

for ((i=0; i<2; i++)); do
	rev_p=$`(echo -n "hola mundo" | rev)`
#	echo -n "hola mundo" | rev
	echo "${rev_p}"
done

