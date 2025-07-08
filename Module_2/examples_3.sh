#!/bin/bash

get_input(){
	read -p "Enter file to process: " infile
}

sort_lines(){
	sort
}

filter(){
	grep "$1"
}

process_file(){

	get_input

	cat "$infile" | tee /dev/stderr |
	
	sort_lines |

	filter "error"
}

process_file
