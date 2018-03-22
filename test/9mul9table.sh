#!/bin/bash
i=1
j=1
for i in `seq 1 9`
do
	for j in `seq 1 $i`
	do
		echo -e "$j*$i=$[i*j]\t\c"
	done
	echo ""
done
