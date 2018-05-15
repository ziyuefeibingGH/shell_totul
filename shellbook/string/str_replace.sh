#!/bin/bash
var="for test string haha hehe houhouhou"
echo ${var/ /_}
echo ${var// /_}

echo $var | awk '{sub(" ", "_", $0); printf("%s\n", $0);}'
echo $var | awk '{gsub(" ", "_", $0); printf("%s\n", $0);}'

echo $var | sed -e 's/ /_/'
echo $var | sed -e 's/ /_/g'

echo $var | tr " " "_"
echo $var | tr '[a-z]' '[A-Z]'
