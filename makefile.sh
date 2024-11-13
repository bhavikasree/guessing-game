README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\nDate and time at which make was run:" >> README.md
	date >> README.md
	echo "\nNumber of lines in guessinggame.sh:" >> README.md
	wc -l < guessinggame.sh >> README.md
