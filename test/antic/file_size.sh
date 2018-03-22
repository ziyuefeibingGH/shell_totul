#!/bin/bash
file=./gzipt.sh
stat -c %s $file
stat --printf='%s\n' $file
wc -l $file
