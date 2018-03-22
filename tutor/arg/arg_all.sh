#!/bin/bash

echo "Hello World!"

echo "Print arg:"
for i in "$*"; do
	echo " \$*: $i"
done
for i in "$@"; do
	echo " \$@: $i"
done
echo "arg string:	$*"
echo "arg4:	$4"
