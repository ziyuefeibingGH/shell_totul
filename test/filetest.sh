#!/bin/bash
read -p "please input file path : " file_path
a=`ls -l $file_path|grep -o "^."`
echo "length a : ${#a}"
if [ ${#a} != 1 ]
then
	echo "directory file"
else
	case $a in
		-)
			echo "common file"
			;;
		l)
			echo "linked file"
			;;
		*)
			echo "other file"
			;;
	esac
fi
