#!/bin/bash
var="this is a string for test"

echo $var | tr ' ' '\n' | sort		# sort positive sequence
echo $var | tr ' ' '\n' | sort -r		# sort inverted sequence

nihao_utf8=$(echo "你好")
nihao_gb2312=$(echo $nihao_utf8 | iconv -f utf8 -t gb2312)
