#/bin/bash
echo "PID for $0: $$"
echo "$0 get \$A is $A"
A=C
export A
echo "$0: \$A is $A"
