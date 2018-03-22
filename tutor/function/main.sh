#!/bin/bash

function main()
{
	int=8
	intb=18

	while (( int < intb ))
	do
		echo "inc int: $int"
		let int++
	done
}

echo "function start"
main
echo "function end "
