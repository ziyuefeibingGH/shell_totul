#/bin/bash
A=B C
echo $?
A='B	 C'
echo $A
A="B	 C"
echo "$A"
echo '$A'
A="B\ C"
echo '"$A"'
echo "'$A'"
