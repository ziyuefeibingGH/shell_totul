#!/bin/bash
read -p "input triangle long " longs
for (( i=0; i<longs; i++ ))
do
	for j in `seq 1 $[longs*2-1]`
	do
		if test $i -eq $[longs-1]
		then
			echo -n "*"
		elif [ $j = $[longs-i] -o $j = $[longs+i] ]
		then
			echo -n "*"
		else
			echo -n " "
		fi
	done
		echo #"j = $j i = $i"
done


