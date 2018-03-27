#/bin/bash
name=value
B=ls
echo $B $name
A=B:C:D
A=$A:E
echo $A
export A

showvar() {
	var=${star=expr}
	echo \$var is $var
	echo \$str is $str
}

str=
showvar
unset str
showvar
str=xyz
showvar
