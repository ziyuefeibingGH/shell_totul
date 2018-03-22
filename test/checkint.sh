#!/bin/bash
read -p "please input a digit:" int
if [[ $int =~ (^[0-9]*[1-9][0-9]*$) ]] 
then
	echo " this input is a postive integer"
else
	echo " this digit is not postive integer"
fi
