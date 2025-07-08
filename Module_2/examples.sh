#!/bin/bash

function disk_usage(){
	df -h /
}

export SERVER_NAME=$(hostname)

source ~/venv/bin/activate

alias docs="cd /Users/name/Documents"

git status

echo $SERVER_NAME
