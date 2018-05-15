#!/bin/bash
i=54;j=9423410982741093;
echo $i | grep "^[0-9]"
echo $?

echo $j | grep -q "^[0-9]\+$"	# grep -q: Quiet; do not write anything to standard output.
								# Exit immediately with zero status if any mat ch is found, even if an error was detected.
echo $?
