#!/bin/bash
var="this is a string for test"
echo ${var/ /_ }
echo ${var// /_ }
echo ${var/ / _}


echo $var | awk '{sub(" ", "_ ", $0); printf("%s\n", $0);}'

echo $var | sed -e 's/ /_ /'
echo $var | sed -e 's/\( \)/_\1/g'
echo $var | sed -e 's/\( \)/\1_/g'
echo $var | sed -e 's/\(is\) \(a\)/\2 \1/g'

echo $var | sed '/string/a test'
echo $var | sed '/string/i test'
