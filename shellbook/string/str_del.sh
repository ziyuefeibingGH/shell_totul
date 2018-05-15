#!/bin/bash
var="this is a string for test"
echo ${var// /}
echo ${var%% *}

echo ${var} | awk '{gsub(" ", "", $0); printf("%s\n", $0);}'

echo ${var} | sed -e 's/ //g'
echo ${var} | tr -d " "
