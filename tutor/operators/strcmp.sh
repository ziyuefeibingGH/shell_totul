#!/bin/bash

stra="yuebing"
strb="yuebing"
if [ $stra = $strb ]
then
	echo " true "
else
	echo " false "
fi

if [ $stra != $strb ]
then
	echo " true "
else
	echo " false "
fi

if [ -z $stra ]
then
	echo "-z $a : lenth 0"
else
	echo "-z $a : lenth != 0"
fi

if [ -n $stra ]
then
	echo "-n $a : lenth != 0"
else
	echo "-n $a : lenth 0"
fi

if [ $stra ]
then
	echo "-n $a : lenth != 0"
else
	echo "-n $a : lenth 0"
fi
