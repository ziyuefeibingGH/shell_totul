#!/bin/bash
numa=100
numb=900

if test $[numa] -eq $[numb]
then
	echo " a eq b "
else
	echo " a is not eq b "
fi
