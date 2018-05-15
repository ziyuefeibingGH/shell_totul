#!/bin/bash
a=5;b=4;c=6;
if test $a -lt $c -a $b -eq 4 -a $c -eq 6;then echo "HAHA";else echo hehe;fi

filepath=./test_count.sh
if test -e $filepath -o -d $filepath; then echo "is file or dir";else echo hehe;fi

if test -e $filepath || -d $filepath; then echo "is file or dir";else echo hehe;fi
string="hello"
if test -n $string -o $string == "hello";then echo "ok is it";else echo "error";fi
if test -n $string || $string == "hello";then echo "ok is it";else echo "error";fi

i=5
if test ! $i -lt 5 -a ! $i -gt 5;then echo "yse";else echo "no";fi
if test ! $i -eq 5 -o ! $i -ne 5;then echo "yse";else echo "no";fi

if [ ! $i -eq 5 -o ! $i -ne 5 ];then echo "yse";else echo "no";fi
if [ ! $i -lt 6 -o ! $i -gt 4 ];then echo "yse";else echo "no";fi
str=""
if [ "$str" = "test" ];then echo "yes";else echo "no";fi
if [ "$str" == "test" ];then echo "yes";else echo "no";fi

ping -c 1 www.baidu.com -w 1 && echo "=====================connected=============="
