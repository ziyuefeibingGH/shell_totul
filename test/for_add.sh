#!/bin/bash
read -p "input a postive number : " num
i=1
sum=0

if [[ $num =~ ((^[0-9]*[1-9][0-9]*$)) ]]
then
	for i in `seq 1 $num`
	do
		let	sum+=i
		let i++
	done

	echo "summer is $sum"
else
	echo "please input a postive number"
fi


