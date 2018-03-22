#!/bin/bash

PWDN=`pwd`
file=$PWDN"/cmd.sh"
if [ -r $file ]
then
	echo "file is readable"
else
	echo "file is disreadable"
fi

if [ -e $file ]
then
	echo "file name:	${file}"
else
	echo "no such file"
fi
echo "file: ${file}"
