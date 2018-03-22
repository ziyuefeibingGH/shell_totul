#!/bin/bash
array=(A B "C" D)
for i in ${array[@]}; do
	echo "array[$i]: ${array[i]}"
done
echo "array: ${array[@]}"
echo "array: ${array[*]}"
echo "array: ${#array[@]}"
echo "Hello World!"

