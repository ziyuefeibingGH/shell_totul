#!/bin/bash
if test -e ./bash
then 
	echo 'file is ex!'
else
	if test -e ./string.sh
	then
		echo "string.sh is ex!"
	fi
fi

if test -e /bin/string -o -e ./file.sh
then
	echo "atlast one more file"
else
	echo "noone"
fi
