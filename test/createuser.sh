#!/bin/bash
username=$1
if [ ${#username} != 0 ]
then
	echo $username ${#username}
else
	echo "need a parameter"
fi

