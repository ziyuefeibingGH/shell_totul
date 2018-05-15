#!/bin/bash
var="get the lenth for this"
var_arr=($var)					# put str to array var_arr
echo ${var_arr[0]} ${var_arr[1]} ${var_arr[2]} ${var_arr[3]} ${var_arr[4]} 

echo ${var_arr[@]}
echo ${#var_arr[*]}

var_arr[5]="haha"
echo ${var_arr[@]}
for i in $var;do echo -n $i"_";done
echo $var | awk '{printf("%d %s\n", split($0, var_arr, " "), var_arr[1]);}'
echo $var | awk '{printf("%d | %s %s %s %s %s | %s\n", NF, $1, $2, $3, $4, $5, $0);}'
echo $var | awk '{split($0, var_arr, " "); for( i in var_arr) printf("%s ", var_arr[i]);}'

echo sys_exit > symbol
echo sys_read >> symbol
echo sys_close >> symbol

filesym=symbol
filemap=System.map

awk '{if(FILENAME ~ "System.map") map[$3]=$1; else {printf("%s\n", map[$1])}}' \
	$filemap $filesym
