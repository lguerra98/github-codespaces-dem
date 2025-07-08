#!/bin/bash

read -p "Enter your age: " AGE

if [ $AGE -gt 18 ]; then
	echo "You are an adult"
else
	echo "You are still a kid"
fi
