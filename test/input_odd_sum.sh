#!/bin/bash
read -p "input a number " number
for i in `seq 1 $number`
do
	if [ $i -eq 51 ]
	then
		continue
	elif [ $[i%2] -eq 1 ]
	then
		let sum+=$i
	fi
done
echo "sum: $sum"
		
