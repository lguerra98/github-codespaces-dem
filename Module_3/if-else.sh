#!/bin/bash

echo "What Food do you choose?: "
read FOOD

if [ "$FOOD" = "Apple" ]; then
	echo "Eat Yogourt with your Apple"
elif [ "$FOOD" = "Milk" ]; then
	echo "Eat Cereal with your Milk"
else
	echo "Eat your ${FOOD} by itself!"
fi
