#!/bin/bash

QQ() {
	echo -n "Do you want to continue? (yes/no)"
	read YN
	if [ "$YN" = Y -o "$YN" = y -o "$YN" = "yes" -o "$YN" = "Yes" -o "$YN" = "YES" ]
	then
		QQ
	else
		echo "\$YN is $YN"
		#exit 0
	fi
}

QQE() {
	echo -n "Do you want to continue?? (yes/no)"
	read YN
	case "$YN" in
		[Yy]|[Yy][Ee][Ss])
			QQE
			;;
		*)
			exit 0
			;;
	esac
}

QQ
QQE
