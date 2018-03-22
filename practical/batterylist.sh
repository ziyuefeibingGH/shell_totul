#!/bin/bash
touch batpara.log
# temp 50 battery parameter
echo -e "50:" > batpara.log
# first line is different
sed -n '1p' $1 | awk '{printf("%d\t%d\t%d\t\t\n", $3, $1, $4)}'  >> batpara.log
# from second line, determine capacity and voltage of the battery is consistent
# sort -n: sort, -u: delect repetition, -k 1: operation first column
sed -n '2,$p' $1 | awk '{if($5 > 0 && $5 < 100 && $1 > 3000 && $1 < 5000)printf("%d\t%d\t%d\n", $5, $1, $6)}' | sort -n -u -k 1  >> batpara.log
sed -n '2,$p' $1 | awk '{if($5 == 100 && $1 > 3000 && $1 < 5000)printf("%d\t%d\t%d\n", $5, $1, $6)}' >> batpara.log
echo  "">> batpara.log
echo  "">> batpara.log
echo -e "25:" >> batpara.log
sed -n '1p' $1 | awk '{printf("%d\t%d\t%d\t\t\n", $7, $5, $8)}'  >> batpara.log
sed -n '2,$p' $1 | awk '{if($11 > 0 && $11 < 100 && $7 > 3000 && $7 < 5000)printf("%d\t%d\t%d\n", $11, $7, $12)}' | sort -n -u -k 1  >> batpara.log
sed -n '2,$p' $1 | awk '{if($11 == 100 && $7 > 3000 && $7 < 5000)printf("%d\t%d\t%d\n", $11, $7, $12)}' >> batpara.log
echo  "">> batpara.log
echo  "">> batpara.log
echo -e "0:" >> batpara.log
sed -n '1p' $1 | awk '{printf("%d\t%d\t%d\t\t\n", $11, $9, $12)}'  >> batpara.log
sed -n '2,$p' $1 | awk '{if($17 > 0 && $17 < 100 && $13 > 3000 && $13 < 5000)printf("%d\t%d\t%d\n", $17, $13, $18)}' | sort -n -u -k 1  >> batpara.log
sed -n '2,$p' $1 | awk '{if($17 == 100 && $13 > 3000 && $13 < 5000)printf("%d\t%d\t%d\n", $17, $13, $18)}' >> batpara.log
echo  "">> batpara.log
echo  "">> batpara.log
echo -e "-10:" >> batpara.log
sed -n '1p' $1 | awk '{printf("%d\t%d\t%d\t\t\n", $15, $13, $16)}'  >> batpara.log
sed -n '2,$p' $1 | awk '{if($23 > 0 && $23 < 100 && $19 > 3000 && $19 < 5000)printf("%d\t%d\t%d\n", $23, $19, $24)}' | sort -n -u -k 1  >> batpara.log
sed -n '2,$p' $1 | awk '{if($23 == 100 && $19 > 3000 && $19 < 5000)printf("%d\t%d\t%d\n", $23, $19, $24)}' >> batpara.log
