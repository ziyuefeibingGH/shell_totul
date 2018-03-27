#!/bin/bash
A=abc
[ "$A" = abc ] && echo " this is ture"
[ -n "$A" ] && echo " -n this is ture"

unset A 
[ -n "$A" ] && echo " this is ture" || echo "\$A is not set"
echo $?

[ -n "$A" ] && echo " this is ture" || echo "\$A is not set"
