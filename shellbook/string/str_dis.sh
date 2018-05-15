#!/bin/bash
echo -e "\033[31;40m"
echo -e '\033[11;29H Hello, World!'

while :;do echo -e "\033[11;29H "$(date "+%Y-%m-%d %H:%M:%S");done
