#!/bin/bash
for name in $(cat $1)
do
	host $name.$2 | grep "has address"
done
exit
