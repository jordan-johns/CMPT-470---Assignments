include "Pascal.keys"
include "Pascal.compounds"

include "2.Grm"

define program
	[progDef] |
	[progDef] [body] |
	[progDef] [use_section] [body]
end define

function main
	match [program]
	P[program]
end function
