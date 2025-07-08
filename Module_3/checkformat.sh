#!/bin/bash

EMAIL_REG="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"

if [[ $1 =~ $EMAIL_REG ]]; then
	echo "Valid e-mail"
else
	echo "Invalid e-mail"
fi

