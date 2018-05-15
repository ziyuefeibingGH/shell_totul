#!/bin/bash
echo "\t\n" | grep "[[:print:]]"
echo $? "p"

echo -e "\t\n" | grep "[[:print:]]"
echo $?
