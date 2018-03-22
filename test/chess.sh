#!/bin/bash
read="\e[41m  \e[0m"
white="\e[47m  \e[0m"
for i in `seq 1 8`
do
	if [ $[i%2] -eq 0 ]
	then
		for j in {1..4}
		do
			echo -en "$read$white"
		done
	else
		for j in {1..4}
		do
			echo -en "$white$read"
		done
	fi
	echo
done
