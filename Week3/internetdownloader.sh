#!/bin/bash
while [ "$website" != "exit" ]; do
echo "Type the URL of the page you want downloaded or type exit:"
read "website"
if [ $website = "exit" ]
then
exit 0
else
wget "$website"

fi
done