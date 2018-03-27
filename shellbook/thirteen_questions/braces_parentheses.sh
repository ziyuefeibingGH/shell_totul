#/bin/bash
file=this
file1=that
echo ${file}and$file1
dirt=$(pwd)
echo $dirt
curdir=`pwd`
echo ${curdir%/*}
