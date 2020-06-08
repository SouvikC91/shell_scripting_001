number_of_files=$(ls -l | grep ^- | wc -l)
while [[ 1 ]]
do
	echo "Guess the number of files in the current directory:"
	read guess
	
	if [[ $guess -eq $number_of_files ]]
	then
		echo "Correct Guess! Congratulations!"
		break
	elif [[ $guess -gt $number_of_files ]]
	then
		echo "Too high!"
	elif [[ $guess -lt $number_of_files ]]
	then
		echo "Too low!"
	fi
done
