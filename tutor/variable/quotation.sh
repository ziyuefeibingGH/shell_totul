#!/bin/bash
echo "Hello World!"
my_name='yuebing'
str='this is a string, by ${my_name}'
echo $str
greeting="hello, "$my_name" !"
greeting_1="hello, ${my_name} !"
echo $greeting $greeting_1
echo "greeting_1 long: ${#greeting_1}"	# 输出字符串长度

echo ${greeting_1:7:7}	#提取字符串 greeting_1 里第七个字符后的七个字符

echo `expr index "$greeting_1" y`	# 查找字符 y 在字符串中的位置

