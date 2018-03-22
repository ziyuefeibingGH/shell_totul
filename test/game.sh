#!/bin/bash
i=$[RANDOM%10+1]
read -p "input a number " gass
until [ $gass -eq $i ]
do
	if [ $gass -lt $i ]
	then
		echo "it's to lt, gass again"
	else
		echo "it's to gt, gass again"
	fi

	read -p "again: " gass
done

echo "number is $i"
