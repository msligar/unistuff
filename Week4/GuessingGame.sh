#!/bin/bash

#This function prints a given error

printError()

{
echo -e "\033[31mERROR:\033[0m $1"
}



#This function will get a value between the 2nd and 3rd arguments

printError()

{

    echo -e "\033[31mERROR:\033[0m $1"

}

getNumber()

{

read -p "$1: "
while
(( $REPLY < $2 || $REPLY> $3 )); do
printError "Input must be between $2 and $3"
read -p "$1: "
done

}

(( answer = 43))

echo "Guess a number between 1 and 100"

getNumber "please type a number between 1 and 100" 1 100

while (( $REPLY != answer )); do
	
	if (( $REPLY < answer )); then
		echo "Higher..."
		getNumber "please type a number between 1 and 100" 1 100
	elif (( $REPLY > answer )); then
		echo "Lower..."
		getNumber "please type a number between 1 and 100" 1 100
	fi
done

echo "Thank Congratulations"

