#!/bin/bash
array=(A B "C" D)
for i in ${array[@]}; 
do
	echo "array[$i]"
done

echo " while loop: j++	"
j=0
while [ $j -lt ${#array[*]} ]
do
	echo "array[$j]: ${array[j]}"
	let j++
done



echo "array: ${array[@]}"
echo "array: ${array[*]}"
echo "array: ${#array[@]}"
echo "Hello World!"

