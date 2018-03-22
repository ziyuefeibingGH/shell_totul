#!/bin/bash
if test -d ../array
then
	echo "array is ex"
fi

a=4
b=8
c=9
d=12

if [ $a = $b ]
then
	echo "a = b"
elif test $[a+b] -ge $d
then
	echo "a + b > d"
else
	echo "0.0"
fi
	

