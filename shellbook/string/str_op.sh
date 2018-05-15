#!/bin/bash
var="this is a string for test"
echo ${var:5:5}

echo ${var:(-7)}

echo `expr substr "$var" 5 3`

echo $var | awk '{printf("%s\n", substr($0, 9, 9))}'

echo $var | cut -d" " -f 5

echo ${var%% *}
echo ${var% *}
echo ${var#* }
echo ${var##* }

echo $var |sed 's/ [a-z]*//g'
echo $var |sed 's/[a-z]* //g'

echo $var | tr " " "\n" | sed -n 1p
echo $var | tr " " "\n" | sed -n 5p

expr index "$var" s

echo $var | awk '{printf("%d\n", match($0, "for"));}'

grep "consists of" test.txt
grep "consists[[:space:]]of" -n -H test.txt
grep "consists[[:space:]]of" -n -o test.txt
awk '/consists of/{ printf("%s:%d:%s\n", FILENAME, FNR, $0)}' test.txt
sed -n -e '/consists of/=;/consists of/p' test.txt

