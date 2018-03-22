#!/bin/bash
#srcfile=wisky8163_tb_m_bat_setting.dtsi
#targetfile=bak_wisky8163_tb_m_bat_setting.dtsi
tempfile=templogfile
logfile=batpara.log

xls_copy_file=$1
targetfile=$2

if [ $# != 2 ]
then
	echo -e "$0 need 2 parameter:\n\t1. xls parameter copy\n\t2. *.dtsi"
	exit
fi

# logfile save userful parameter, in logfile: $capacity $voltage $resistance
touch $logfile
#cp $srcfile $targetfile

for i in {0..3}
do
	# for xls 1st line the capacity is in 3rd column, voltage in 1st column, resistance is in 4th col. && every temperature parameter have 4 col
	let capacity_v=3+$i*4
	let voltage_v=1+$i*4
	let resistance_v=4+$i*4

	# first line is different 
	sed -n '1p' $1 | awk '{printf("\t\t%d\t%d\t%d\t\t\n", $'$capacity_v', $'$voltage_v', $'$resistance_v')}'  > $logfile
	sed -n '1p' $1 | awk "{printf(\"\t\t%d\t%d\t%d\t\t\n\", \$$capacity_v, \$$voltage_v, \$$resistance_v)}"
	# from second line, determine capacity and voltage of the battery is consistent
	# sort -n: sort, -u: delect repetition, -k 1: operation first column

	# for xls other line the capacity is in 5rd column, voltage in 1st column, resistance is in 6th col. && every temperature parameter have 6 col
	let capacity_v=5+$i*6
	let voltage_v=1+$i*6
	let resistance_v=6+$i*6

	# now operation TEMPPERATURE_NUM
	let tempperature_num=3-$i

	sed -n '2,$p' $1 | awk '{if($5 > 0 && $5 < 100 && $1 > 3000 && $1 < 5000)printf("\t\t%d\t%d\t%d\n", $'$capacity_v', $'$voltage_v', $'$resistance_v')}' | sort -n -u -k 1  >> $logfile
	sed -n '2,$p' $1 | awk '{if($5 == 100 && $1 > 3000 && $1 < 5000)printf("\t\t%d\t%d\t%d\n", $'$capacity_v', $'$voltage_v', $'$resistance_v')}' >> $logfile

	# tempfile save stract parameter, for battery_profile_t$tempperature_num: $capacity $voltage
	touch $tempfile

	# extract parameter
	echo -e "\tbattery_profile_t$tempperature_num = <" > $tempfile
	sed -n '1,$p' $logfile | awk '{if($1 >= 0 && $1 <= 100)printf("\t\t\t%d\t%d\n", $1, $2)}' >> $tempfile
	echo -e "\t>;" >> $tempfile

	# count parameter number
	t_parameter_num=`wc -l $tempfile | awk '{printf("%d", $1)}'`
	let t_parameter_num=$t_parameter_num-2

	# modify parameter numbera in targetfile
	let linegg=`sed -n '/battery_profile_t'$tempperature_num'[[:space:]]*=/=' $targetfile`
	let line_num=$linegg-1
	sed -i ''$line_num's/<[0-9]*>/<'$t_parameter_num'>/' $targetfile

	# delect old parameter in targetfile
	sed -i -e '/battery_profile_t'$tempperature_num'[[:space:]]*=/,/>;/d' $targetfile

	let linegg=$linegg-1

	# read new parameter form tempfile to targetfile at linegg
	sed -i ''$linegg'{r '$tempfile'
	}' $targetfile

	# tempfile save stract parameter, for r_profile_t$tempperature_num: $resistance $voltage
	echo -e "\tr_profile_t$tempperature_num = <" > $tempfile
	sed -n '1,$p' $logfile | awk '{if($2 >= 3000 && $1 <= 5000)printf("\t\t\t%d\t%d\n", $3, $2)}' >> $tempfile
	echo -e "\t>;" >> $tempfile
	let linegg=`sed -n '/r_profile_t'$tempperature_num'[[:space:]]*=/=' $targetfile`
	sed -i -e '/r_profile_t'$tempperature_num'[[:space:]]*=/,/>;/d' $targetfile

	let line_num=$linegg-1
	sed -i ''$line_num's/<[0-9]*>/<'$t_parameter_num'>/' $targetfile

	let linegg=$linegg-1
	echo $linegg

	sed -i ''$linegg'{r '$tempfile'
	}' $targetfile

done
rm $tempfile
rm $logfile
