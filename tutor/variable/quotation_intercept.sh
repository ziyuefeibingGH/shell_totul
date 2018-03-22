#!/bin/bash
str="This is a string for test!"

s1=${str%%is*}
s2=${str%string*}
s3=${str#*for}
s4=${str##*s}

echo "关于字符串截取 %, # 的使用方法"
echo "string: ${str}		lenth: ${#str}"
echo "str%%is*: ${s1}		lenth: ${#s1}"	
echo "str%string*: ${s2}		lenth: ${#s2}"	
echo "str#*for: ${s3}		lenth: ${#s3}"	
echo "str##*s: ${s4}		lenth: ${#s1}"	
echo "str##*ing: ${str##*ing}		lenth: `expr length "${str##*ing}"`"	
echo "Hello World!"
