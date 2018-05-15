#!/bin/bash
A="home";B="haha";C="whoami"
echo $C | grep -q "^[A-Z]\+$"
echo $?

echo $A | grep -q "^[a-z]\+$"
echo $?
echo $B | grep -q "^[a-z]\+$"
echo $?

ic="123+jalkdhfafa1239754"
echo $ic | grep -q "^[0-9a-zA-Z]\+$"
echo $?

echo " " | grep " "
echo $?

echo -e "\t" | grep "[[:space:]]"	# [[:space:]] match space and tabs at the same time
echo $? " space "
echo -e " \t" | grep "[[:space:]]"
echo $? " \t"
echo -e "\t" | grep "	"
echo $? "\t"

echo "test2007@lzu.cn" | grep "[0-9a-zA-Z\.]@[0-9a-zA-Z\.]"

echo "http://news.lzu.edu.cn/article.jsp?newsid=10135" | grep "^http://[0-9a-zA-Z\./=?]\+$"
echo "http://news.lzu.edu.cn/article.jsp?newsid=10135" | grep "^http://[0-9a-zA-Z\./=?]\+$"
