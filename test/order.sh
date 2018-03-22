#!/bin/bash
for (( i=1;;i++ ))
do
	read -p "input a order if over input nn " string[$i]
	if [ ${string[$i]} == "nn" ]
	then
		break
	fi
done

for (( j=1;i>j;j++ ))
do
	echo " your order: ${string[$j]}"
done
