produce_README.md: guessinggame.sh
	echo "# **Peer-graded Assignment: Bash, Make, Git, and GitHub**" > README.md
	echo "### *by Stefano Manca*" >> README.md
	echo " " >> README.md
	echo "This file README.md is produced by running a make command on $$(date)" >> README.md
	echo " " >> README.md
	echo "guessinggame.sh has" $$(wc -l guessinggame.sh | egrep -o [0-9]+) "lines" >> README.md
