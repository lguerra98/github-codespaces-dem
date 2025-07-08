#!/bin/bash

NAME="John"

print_name(){
	echo $NAME
}

print_name

export NAME

#bash
print_name

alias project="cd project && source var.env"

project
