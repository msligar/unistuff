#!/bin/bash
# Set the color variable
green='\033[0;32m'
# Clear the color after that
clear='\033[0m'
echo "Hi There!"
echo -e "Its good to see you ${green} $1! ${clear}"
exit 0