#!/bin/bash 
      
read -p "type the name of the folder you would like to copy: " folderName 
      
 if [ -d "$folderName" ] 
 then 
 read -p "What is the destination? " destination
 mkdir $destination
cp -r $folderName $destination

else
echo "That folder does not exist sorry"
 fi

