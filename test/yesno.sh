#!/bin/bash

read -p "input yes or no" string
case $string in
	[yY][eE][sS])
		echo "ok, it's yes"
		;;
	[nN][oO])
		echo "ss, it's no"
		;;
	*)
		echo "error, byebye"
		;;
esac

