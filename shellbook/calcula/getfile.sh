#!/bin/bash
for i in `seq 1 10`
do
	let arrayman[$i]=$RANDOM%5+2
	let arraymoney[$i]=$RANDOM%10000
	echo "$i ${arrayman[$i]} ${arraymoney[$i]}" >> list
done
