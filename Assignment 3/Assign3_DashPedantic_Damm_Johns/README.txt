================================================================================
=
= CMPT470 
= ASSIGNMENT 3
= TXL GRAMMAR FOR C AND PASCAL
=
= STEPHEN DAMM (sad503)
= JORDAN JOHNS (jbj486)
=
================================================================================


================================================================================
= SUMMARY
================================================================================
- We completed 100% of the assignment.
- There was no part of the grammar we could not complete.


================================================================================
= DIRECTORY STRUCTURE
================================================================================
- C_Damm
	- makeCgrammar
		- contains iterative txl scripts
	- Complete_C_grammar
		- contains complete C grammar
- Pascal_Johns
	- makePascalgrammar
		- contains iterative txl scripts
	- Complete_Pascal_grammar
		- contains complete Pascal


================================================================================
= ITERATIVE BUILD PROCESS
================================================================================
In our makeCgrammar and makePascalgrammar directory we included each individual
step of our development process.  Our iterative development
process included writing a grammar that supported each tutorial on
http://programmerprogramming.com/.  This allowed us to start with the basics
of each language and slowly build up to the more complex portions.

- C_Damm/makeCgrammar/
	- 1.Txl and 1.Grm
	http://programmerprogramming.com/programming_c_learn01.html

	- 2.Txl and 2.Grm
	http://programmerprogramming.com/programming_c_learn02.html

	- 3.Txl and 3.Grm
	http://programmerprogramming.com/programming_c_learn03.html

	- 4.Txl and 4.Grm
	http://programmerprogramming.com/programming_c_learn04.html

- Pascal_Johns/makePascalgrammar/
	- 1.Txl and 1.Grm
	http://programmerprogramming.com/programming_pascal_learn01.html

	- 2.Txl and 2.Grm
	http://programmerprogramming.com/programming_pascal_learn02.html

	- 3.Txl and 3.Grm
	http://programmerprogramming.com/programming_pascal_learn03.html

	- 5.Txl and 5.Grm
	http://programmerprogramming.com/programming_pascal_learn05.html

	- 6.Txl and 6.Grm
	http://programmerprogramming.com/programming_pascal_learn06.html


================================================================================
= TEST DESCRIPTIONS
================================================================================

- C_Damm/Complete_C_grammar/

	- Regression Testing
		You will notice that there is a script called test-output.sh.
		This was provided curtesy of Dylan Knowles in the class.
		How it works is you simply run it by:

		./test-script.sh tests .tutorial1 C.Txl

		And it will run every single example from the C tutorial 1
		page and output the success's and failures.  Currently nothing
		fails and we have 100% converage from the examples, feel free
		to try against tutorial 2, 3 or 4 by changing to ".tutorial#"
		where "#" is the tutorial for which you want to test the
		examples from. The tests are in the "tests" directory.

	- Input1.C:
		A number guessing game written in C.  This program tests the 
		following:
			- Comments
			- #includes
			- While loops
			- Do while loop
			- Nested loops
			- if statements

	- Input2.C:
		Displays a menu where the user can choose to play the number 
		guessing game or print a box of astericks to the screen.  This 
		program tests the following:
			- Comments
			- #includes
			- While loops
			- Do while loops
			- Nested for loops
			- Switch statements with complex case blocks
			- if statements

	- Input3.C:
		Tests two birthdays and determines which person has the earlier 
		birthday.  This program tests the following:
			- Comments
			- #includes
			- if, else-if and else statements
			- Nested complex if statements

- Pascal_Johns/Complete_Pascal_grammar/

	- Regression Testing
		You will notice that there is a script called test-output.sh.
		This was provided courtesy of Dylan Knowles in the class.
		How it works is you simply run it by:

		./test-script.sh tests .tutorial1 Pascal.Txl

		And it will run every single example from the Pascal tutorial
		1 page and output the success's and failures. Currently
		nothing fails and we have 100% converage from the examples,
		feel free to try against tutorial 2, 3, 5 or 6 by changing to
		".tutorial#" where "#" is the tutorial for which you want to
		test the examples from. The tests are in the "tests" directory.

	- Test1.Pascal:
		Displays a box of asterisks.  This program tests the 
		following:
			- Comments
			- Variables
			- Nested for loops
			- Basic function calls in Pascal.

	- Test2.Pascal:
		Tests two birthdays and determines which person has the earlier 
		birthday.  This program tests the following:
			- Comments
			- Variables
			- if, else-if and else statements
			- Nested complex if statements

	- Test3.Pascal:
		Displays a menu where the user can choose to print out what
		fruit they like or print a box of astericks to the screen.  This 
		program tests the following:
			- Comments
			- Repeat loops
			- Nested for loops
			- Switch statements with complex case blocks
			- if statements
