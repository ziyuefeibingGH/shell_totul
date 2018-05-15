#!/bin/bash
#make bootimage -j8 2>&1 | tee boot.log
if [ $# != 1 ]; then
	echo "Usage: $0 need a parameger: "
	echo "		 b: make bootimage,"
	echo "		 s: make systemimage,"
	echo "		 d: make dist,"
	echo "		 p: make pl,"
	echo "		 l: make lk,"
	echo "		 lb: make lk bootimage,"
	echo "		 pl: make pl lk,"
	echo "		 plb: make pl lk bootimage."
	exit
fi 
if [ $1 == 'b' ]; then
	make bootimage -j8 2>&1 | tee boot.log
fi
if [ $1 == 's' ]; then
	make systemimage -j8 2>&1 | tee system.log
fi
if [ $1 == 'l' ]; then
	make lk -j8 2>&1 | tee lk.log
fi
if [ $1 == 'p' ]; then
	make pl -j8 2>&1 | tee pl.log
fi
if [ $1 == 'd' ]; then
	make -j8 2>&1 | tee build.log
fi
if [ $1 == 'lb' ]; then
	make lk bootimage -j8 2>&1 | tee build.log
fi
if [ $1 == 'pl' ]; then
	make pl lk -j8 2>&1 | tee build.log
fi
if [ $1 == 'plb' ]; then
	make pl lk bootimage -j8 2>&1 | tee build.log
fi
