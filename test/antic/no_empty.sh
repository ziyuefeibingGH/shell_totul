#!/bin/bash
file=./gzipt.sh
if [[ -s ${file} ]] 
then
	echo "not empty"
else
	echo "empty"
fi
