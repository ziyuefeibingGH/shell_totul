#!/bin/bash
var="get the length for me"
echo ${var}
echo ${#var}
expr length "$var"

echo $var | awk '{printf("%d\n", length($0));}'

echo -n $var | wc -c

echo $var | tr -cd g | wc -c


echo -n $var | sed -e 's/[^g]//g' | wc -c
echo -n $var | sed -e 's/[^gt]//g' | wc -c

echo $var | wc -w
echo "$var" | tr " " "\n" | grep get | uniq -c
echo "$var" | tr " " "\n" | grep get | wc -l
echo "$var" | awk '{printf("%s\n", $0);}'

