#!/bin/bash

max=0
maxi=0
for i in `seq 1 10`
do
	let arraya[$i]=$RANDOM%7+1
	let arrayb[$i]=$RANDOM%10000
	echo " $i: ${arraya[$i]} ${arrayb[$i]}"
	ave=`echo "${arrayb[$i]} ${arraya[$i]}" | awk '{printf("%d\n", $1/$2)}'`
	if [ $ave -gt $max ]
	then
		let max=$ave
		let maxi=$i
	fi
done


echo "max: $max, i: $maxi"

