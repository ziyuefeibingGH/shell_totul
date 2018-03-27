#/bin/bash
A=B
echo "PID for 1.sh before exec/source/fork: $$"
export A
echo "exec_source6th.sh: \$A is $A"

case $1 in
	exec)
		echo "using exec..."
		exec ./exec_source6th2.sh;;		# will into 2.sh, then exit 
	source)
		echo "using source..."
		. ./exec_source6th2.sh;;		# will execute 2.sh in current shell, then continue
	*)
		echo "using fork by default..."
		./exec_source6th2.sh;;			# will fork a sub shell & execute 2.sh, then exit 2.sh  & continue current shell
esac

echo "PID for exec_source6th.sh after exec/source/fork:$$"
echo exec_source6th.sh: \$A is $A

