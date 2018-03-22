#!/bin/bash
read -p "input file dir: " file_path
if [ -e $file_path ]
then
	echo "file dir:" $file_path

	if [ -f $file_path ]
	then
		echo "$file_path is a file "
	elif [ -d $file_path ]
	then
		echo "$file_path is a dir "
	elif [ -c $file_path ]
	then
		echo "$file_path is a char type "
	elif [ -b $file_path ]
	then
		echo "$file_path is a blank type "
	else
		echo "$file_path is unkonw type "
	fi
else
	echo "file : $file_path not exit"
fi
