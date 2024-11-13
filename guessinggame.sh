#!/bin/bash

# Define a function to count files in the current directory
function file_count {
    echo $(ls -1 | wc -l)
}

# Get the correct number of files
correct_count=$(file_count)

# Start guessing game
echo "Guess how many files are in the current directory:"

# Loop until the user guesses correctly
while true; do
    read -p "Enter your guess: " guess

    # Check if the guess is correct, too low, or too high
    if [[ $guess -eq $correct_count ]]; then

        echo "Congratulations! You guessed the correct number of files."
        break
    elif [[ $guess -lt $correct_count ]]; then
        echo "Your guess is too low. Try again!"
    else
        echo "Your guess is too high. Try again!"
    fi
done
