#!/bin/bash

[ $# -lt 1 ] && echo "please input the income file"
[ ! -f $1 ] && echo "$1 is not a file"

income=$1
awk '{
	printf("%d %0.2f\n", $1, $3/$2);
}' $income | sort -k 2 -n -r
