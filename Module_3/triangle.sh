#!/bin/bash

height=5

print_triangle(){
	for ((i=1; i<=height; i++)); do
		for ((j=1; j<=i; j++)); do
			echo -n "${j}"
		done
		echo # newline
	done
}

print_triangle
