#!/bin/bash

./passwordCheck.sh


exitcode=$? 
if [ $exitcode -eq 0 ]

then

echo "1. Create a folder"
echo "2. Copy a folder"
echo "3. Change Password"

else
exit 1
fi

read -p "Enter your choice : " choice

if [ $choice -eq 1 ]
then
./foldermaker.sh
elif [ $choice -eq 2 ]
then 
./foldercopier.sh
elif [ $choice -eq 3 ]
then
./setPassword.sh 
else
echo "That is not a valid choice"
fi