#!/bin/bash

# the {} will be expended to the current line and becomen the first argument 
# of this script
FROM=$1
BASENAME=${FROM##*/}
BASE=${BASENAME%.*}
SUFFIX=${BASENAME##*.}

TOSUFFIX="$(echo $SUFFIX | tr '[a-z]' '[A-Z]')"
TO=$2/$BASE.$TOSUFFIX
COM="cp $FROM $TO"
echo $COM
eval $COM
