#!/bin/bash

read -p "Filename: " FILENAME
FPATH=`readlink -f $FILENAME`
echo 'Full path: ' $FPATH
