#text Colors
red='\e[0;31m'
yellow='\e[0;33m'
green='\e[0;32m'
NC='\e[0m'

function validatenum {
	while [[ ! $guess = *[0-9] ]]
	do 
		echo -e "${red}Invalid Guess. ${yellow} Please enter a number.${NC}"
		read guess
	done
}


valor=$(ls | wc -l) #count files
echo -e "${yellow}How many files are in the current directory?${NC}"
read guess #read the input
validatenum   #validates the input
#valor=10
while [[ ! $guess -eq $valor ]]
do
	if [[ $guess -gt $valor ]]
	then	
		echo -e "${red}Nope! Your guess is too high!"
	else 
		echo -e "${red}Nope! there are more than that!"
	fi
	echo -e "${yellow}Try Again, How many files are in the current directory?${NC}"
	read guess
	validatenum
done
echo -e "${green}Congratulations! You guessed correctly.${NC}"
