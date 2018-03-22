#!/bin/bash
i=0
sum=0
while (( $i<100 ))
do
	if [ $[$i%2] -ne 0 ]
	then
		let sum+=i
	fi
	let i++
done

echo "i = $i, sum = $sum"
