#!/bin/bash
# colours
red="\033[1;31m"
green="\033[1;32m"
greenbold="\033[1;4;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
purple="\033[1;35m"
cyan="\033[1;36m"
reset="\033[m"

website="https://openphish.com/index.html"


#clean the website
function strip_html () {
cat output.txt | sed 's/<[^>]*>//g' 

}

#clean website and gather the useful data
function strip_clean () {
cat output.txt | sed 's/<[^>]*>//g' | grep -A 3 "http"

}

#quit any time function
function end_go () {
    read -p "Do you wish to continue?  (y/n)  " cont
    if [ "$cont" = "n" ]
    then
    rm output.txt
    exit 3
    fi
    }

#save data function
function data_save () {


read -p "Do you wish to save the data? (y/n)  " answ
    if [ "$answ" = "y" ]
    then
read -p "What would you like to call the file?   " fname

    fi
}

read -p "Hello and Welcome, What would you like to look at the latest Phishing data? (y/n)" answer
if [ "$answer" = "y" ]
then
curl $website > output.txt
while [ "$choice" != "8" ]; do
exitcode=$? 
if [ $exitcode -eq 0 ]

then

echo -e "${red}1. Unedited Text ${reset}"
echo -e "${green}2. Clean it up${reset}"
echo -e "${greenbold}3. Phishing data${reset}"
echo -e "${blue}4. Websites only${reset}"
echo -e "${cyan}5. Time of the latest Phish${reset}"
echo -e "${purple}6. Search the Data${reset}"
echo -e "${yellow}7. Download the website${reset}"
echo "8. Exit"

else
exit 1
fi

read -p "Enter your choice : " choice

if [ $choice -eq 1 ]
then
curl $website
read -p "Do you wish to save the data? (y/n)  " answ
    if [ "$answ" = "y" ]
    then
read -p "What would you like to call the file?   " fname
curl $website > $fname.txt
fi 
end_go
elif [ $choice -eq 2 ]
then
strip_html
read -p "Do you wish to save the data? (y/n)  " answe
    if [ "$answe" = "y" ]
    then
read -p "What would you like to call the file?   " fname1
trip_html > $fname1.txt
fi
end_go
elif [ $choice -eq 3 ]
then
strip_clean
read -p "Do you wish to save the data? (y/n)  " answer
    if [ "$answer" = "y" ]
    then
read -p "What would you like to call the file?   " fname12
strip_clean > $fname12.txt
fi
end_go
elif [ $choice -eq 4 ]
then
strip_html | grep "http"
end_go
elif [ $choice -eq 5 ]
then
echo "The latest Phishing attempt was at:"
strip_html | grep -m1 "[0-9][0-9]:[0-9]" #searches for the start of a time
end_go
elif [ $choice -eq 6 ]
then
strip_clean > temp.txt

read -p "What word do you want to search for?      " word
if  grep -q "$word" temp.txt ; #looks for a word
then
grep -A 3 "$word" temp.txt #prints the word, and the next 3 lines
rm temp.txt       
         
else
echo -e "${red}That word is not present${reset}

"
rm temp.txt
end_go

fi

elif [ $choice -eq 7 ]
then
wget $website
end_go
elif [ $choice -eq 8 ]
then
rm output.txt
exit 2

else
echo "That is not a valid choice"
fi
done
else
rm output.txt
exit 1
fi