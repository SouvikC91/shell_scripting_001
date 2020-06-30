all: README.md

README.md:
	echo '# Guessing Game' > README.md
	date >> README.md
	echo "Number of lines of code contained in guessinggame.sh : `wc -l guessinggame.sh | cut -d' ' -f1`" >> README.md

clean:
	rm README.md
