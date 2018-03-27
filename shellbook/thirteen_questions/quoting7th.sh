#/bin/bash
# (): do shell in a sub shell || a array
# {}: do shell in a non-named function
# $(): count
# ``: count
# ${}: define

A=$((4*4+5))
C=`expr 4 \* 45`
B={4*5*6}
echo A is $A, B is $B, C is $C

D=`pwd`
echo $D
D=$(pwd)
echo \$D#*/ is ${D#*/}
echo \$D##*/ is ${D##*/}
echo \$D%/* is ${D%/*}
echo \$D%%/* is ${D%%/*}
E=( A B C D)
echo ${E[0]}

# $@
# $*
[ $# = 0 ] && echo "$0 need some parameter" && exit
my_fun() {
	echo "$#"
}
echo "$0 have $# parameter, \$@ is "$(my_fun "$@")"
echo "$0 have $# parameter, \$* is "$(my_fun "$*")"
