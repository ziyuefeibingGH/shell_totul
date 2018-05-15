#!/bin/bash

echo $1

FILE_OP=$1
echo $FILE_OP

if [ -d $FILE_OP ]
then
	find $FILE_OP -type f -print
	find $FILE_OP -type f -print | xargs -i sed -i 's/[ \t]*$//g' {}
elif [ -f $FILE_OP ]
then
	echo "sed file $FILE_OP"
	sed -i 's/[ \t]*$//g' $FILE_OP
fi
