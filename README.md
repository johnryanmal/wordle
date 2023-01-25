# wordle

WORDLE



1 g u e s s
2 _ _ _ _ _
3 _ _ _ _ _
4 _ _ _ _ _
5 _ _ _ _ _
6 _ _ _ _ _

= t e s t s




process:
	- 6 guesses
		- user input word
		- check valid word
			- 5 letters
			- contained within dictionary?
		- check against answer
			- green is correct
			- yellow is semi-correct
			- nothing otherwise
		- if word is correct
			- win


check answer:
	- 1 check any letters that match exactly (green)
	- 2 check any mismatching letters (yellow)
		- count letters in guess vs answer
		- for every letter in answer that's also in guess
			- make any letter (in guess) yellow
