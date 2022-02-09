#!/bin/bash
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
purple="\033[1;35m"
cyan="\033[1;36m"
reset="\033[m"
./passwordCheck.sh

while [ "$choice" != "8" ]; do
exitcode=$? 
if [ $exitcode -eq 0 ]

then

echo -e "${red}1. Create a folder ${reset}"
echo -e "${green}2. Copy a folder${reset}"
echo -e "${green}3. Change Password${reset}"
echo -e "${blue}4. Calculator${reset}"
echo -e "${cyan}5. Create Week Folder${reset}"
echo -e "${purple}6. check filenames${reset}"
echo -e "${yellow}7. Download a file${reset}"
echo "8. Exit"

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
elif [ $choice -eq 4 ]
then
./Calculator.sh
elif [ $choice -eq 5 ]
then
./foldermaker.sh
elif [ $choice -eq 6 ]
then
./filenames.sh
elif [ $choice -eq 7 ]
then
./internetdownloader.sh
elif [ $choice -eq 8 ]
then
exit 2

else
echo "That is not a valid choice"
fi
done