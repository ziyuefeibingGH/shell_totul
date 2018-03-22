#!/bin/bash

num=100
i=1
sum=0
for i in `seq 1 $num`
do
	if [ $[$i%3] = 0 ]
	then
		let sum+=i
	fi
	let i++
done
echo $sum


