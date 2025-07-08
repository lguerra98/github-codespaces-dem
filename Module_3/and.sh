#!/bin/bash

touch one.txt &&\
	touch two.txt &&\
	touch three.txt
ls *.txt | wc -l
rm *.txt
