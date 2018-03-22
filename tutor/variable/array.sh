#!/bin/bash
echo "Hello World!"
array_name=(
value0
value1
value2
value3
)

echo ${array_name[@]}

length=${#array_name[@]}	# 取数组元素个数
echo $length

length=${#array_name[0]}	# 取数组中第一个元素的长度
echo ${length}
