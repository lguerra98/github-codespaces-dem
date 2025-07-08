#!/bin/bash


function mimic(){
	echo "First parameter: ${1}"
	echo "First parameter: ${2}"
}

mimic 1 2

mimic 99 100

add(){
	num1=$1
	num2=$2
	result=$(( $num1+$num2 ))
	echo $result
}

add 1 3
result=$( add 1 3 )
add $result 4
