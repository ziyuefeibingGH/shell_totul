#!/bin/bash
md_sum_array=(efbaf275cd 4be9c40b8b 44b2395c46 f8c8873ce0 b902c16c8b ad865d2f63)

for i in `seq 1 65536`
do
	num=`echo $i|md5sum|cut -c 1-10`
	for array_num in ${md_sum_array[@]}
	do
		if [ "$num" == "$array_num" ]
		then
			echo "$array_num --> $i"
		fi
	done
done


