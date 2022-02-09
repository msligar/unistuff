#!/bin/bash

read -p "whats your name? " name

read -sp "Password : " passWord
echo "$passWord" | sha256sum >>Mat/secret.txt

string1=$( cat ~/Desktop/scripts/portfolio/Week3/Mat/secret.txt )
echo

string2=$( cat ~/Desktop/scripts/portfolio/Week3/"$name"/password.txt )

if [ "$string1" = "$string2" ]

then
rm ~/Desktop/scripts/portfolio/Week3/Mat/secret.txt
echo "Access Granted"
exit 0
else
rm ~/Desktop/scripts/portfolio/Week3/Mat/secret.txt
echo "Access Denied"
exit 1 

fi

