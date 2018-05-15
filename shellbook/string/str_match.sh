#!/bin/bash
sed -n 7,9p readme_ls
echo awk
awk '/SYNOPSIS/,/^$/ {printf("%s\n", $0);}' readme_ls

cat /etc/passwd | cut -d":" -f1,4 |head -5
echo group
cat /etc/group | cut -d":" -f1,3 |head -7

join -o 1.1,2.1 -t":" -1 4 -2 3 /etc/passwd /etc/group
