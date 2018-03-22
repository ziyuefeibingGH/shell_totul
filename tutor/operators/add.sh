#!/bin/bash

arg1=7
arg2=9
val=`expr $arg1 + $arg2`
if [ $arg1!=$arg2 ]
then
	echo "arg1 != arg2"
fi
echo "add $arg1 $arg2 = : $val"
