#!/bin/bash
random_n=$RANDOM
max=$random_n
min=$random_n
i=1
while [ $i -lt 10 ]
do
	echo "i: $i random = $random_n"
	let random_n=$RANDOM
	if [ $random_n -ge $max ]
	then
		let max=$random_n
	elif [ $random_n -le $min ]
	then
		let min=$random_n
	fi
	let i++

done
echo "i: $i random = $random_n"
echo "max: $max, min: $min"

