#!/bin/bash
url="ftp://anonymous:ftp@mirror.lzu.edu.cn/software/scim-1.4.7.tar.gz"
echo $url | grep "ftp://[a-z]*:[a-z]*@[a-z\./-]*"
echo ${url%%:*}
echo ${url} | cut -d":" -f 1
tmp=${url##*@}; echo ${tmp%%/*}
tmp=${url##*@}; echo ${tmp%/*}
basename $url
echo ${url##*/}

echo $url | sed -e 's/.*[0-9].\(.*\)/\1/g'
