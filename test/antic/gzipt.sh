#!/bin/bash
gzip -t a.tar.gz
if [[ 0 == $? ]]
then
	echo "good zip"
else
	echo "bad zip"
fi

gzip -t a.tar.gz && echo "good zip" || echo "bad zip"
