#!/bin/bash
echo "Enter your number: "
read "number"
echo "What opperation would you like?"
echo -e "${blue}" 1. Add 
echo -e "${green}" 2. Subtract
echo -e "${red}" 3. Multiply
echo -e "${purple}" 4. Divide "${reset}"
read "opp"
case $opp in
1) math='+';;
2) math='-';;
3) math='*';;
4) math='/';;
*) math='not an option, please select again';;
esac
echo "$number $math"
echo "next number"
read "number2"

echo ""$number" "$math" "$number2" = "
expr "$number" "$math" "$number2"