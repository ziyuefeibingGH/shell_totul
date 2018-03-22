#!/bin/bash
my_name="yuebing"
echo $my_name
readonly my_name
echo ${my_name}
your_name="yuebing"
echo "your name ${your_name}"
unset your_name
your_name="pizibing"
echo "your name ${your_name}"
for skill in Ada Coffe Action Java; do
	echo "I am good at ${skill}Script"
done
echo "Hello World!"
