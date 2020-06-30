function checkguess {
	local number_of_files=$(ls -l | grep ^- | wc -l)
	if [[ $guess -eq $number_of_files ]]
    then
        echo "Correct Guess! Congratulations!"
		win=1
    elif [[ $guess -gt $number_of_files ]]
    then
        echo "Too high!"
    elif [[ $guess -lt $number_of_files ]]
    then
        echo "Too low!"
    fi
}

win=0
while [[ $win -eq 0 ]]
do
	echo "Guess the number of files in the current directory:"
    read guess
    checkguess
done

