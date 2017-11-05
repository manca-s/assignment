produce_README.md: guessinggame.sh
	echo "# **Peer-graded Assignment: Bash, Make, Git, and GitHub**" > README.md
	echo "### *by Stefano Manca*" >> README.md
	echo " " >> README.md
	echo "This file README.md is produced by running a make command on $(date +"%m_%d_%Y")" >> README.md
