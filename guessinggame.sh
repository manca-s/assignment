##!/usr/bin/env bash
# File: guessinggame.sh
# Description: peer-grated assignment for Unix Workbench course (Coursera)
# To do: 1.  ask to user how many files are in the current directory
#	 2A. if the answer is correct then they congrat and the pgm stops
#	 2B. if the answer is incorrect then they advise that the guess is low 
#	     or high and they prompt to try again
#	 3.  the pgm doesn't end until the user guess the number of files

function ask {
	echo "How many files are in current directory?"
	read guess
	if ! [[ $guess =~ ^[0-9]+$ ]]
	then
		echo "The guess should be a number"
		ask
	fi
}

let numfiles=$(ls . | wc -l)

echo "Hi my friend! My name is GuessingGame and I challenge you."
ask

while [[ $guess -ne $numfiles ]]
do
	if [[ $guess -gt $numfiles ]] 
	then 
		echo "The number of files in the current directory is lower than $guess"
	else
		echo "The number of files in the current directory is higher than $guess"
	fi
	ask
done

echo "Congratulations! You guessed it: there are $numfiles files in the current directory"
echo "Thank you for playing with me, bye bye!!!"
