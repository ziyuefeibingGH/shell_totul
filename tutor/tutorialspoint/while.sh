#!/bin/bash
myFile="dnsname.txt"

while read -a FILELINE
do
	echo $FILELINE
done < $myFile
