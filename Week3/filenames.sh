#!/bin/bash

for data in $1
do 
if [ -f $data ];
then
echo "$data that file exists"
elif [ -d $data ];
then
echo "$data that directory exists"
else
echo "that does not exist"
fi
done
