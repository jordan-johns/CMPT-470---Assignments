include "1.Grm"

define program
	[repeat comment_c] |
	[repeat comment_c] [preprocessor] [functionFull] |
	[repeat comment_c] [preprocessor] |
	[repeat comment_c] [functionFull]
end define

function main
	match [program]
	P[program]
end function 
