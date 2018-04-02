#!/bin/bash
[ $# = 0 ] && echo "$0 need a word" && exit 1

FILE=$1
loop_num=$(($#-1))
for n in `seq $loop_num`
do
	shift
	echo "do count: $1 $loop_num $n"
	#cat $FILE | sed -e "s/[^a-zA-Z]/\n/g" | grep -v ^$ | sort | uniq -c |grep " $1$"
	sed -e "s/[^a-zA-Z]/\n/g" $FILE | grep -v ^$ | sort | uniq -c |grep " $1$"
done


#/bin/bash
#cat index.html | sed -e "s/[^a-zA-Z]/\n/g" | grep -v ^$ | sort | uniq -c | sort -n -k 1 -r | head -10
