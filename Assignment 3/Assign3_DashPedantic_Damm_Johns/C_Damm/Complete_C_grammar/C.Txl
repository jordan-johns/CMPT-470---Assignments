include "C.Grm"

define program
	[repeat comment_c] |
	[repeat comment_c] [repeat preprocessor] [NL] [functionFull] |
	[repeat comment_c] [repeat preprocessor] |
	[repeat comment_c] [functionFull]
end define

function main
	match [program]
	P[program]
end function 
