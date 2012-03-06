include "Pascal.keys"
include "Pascal.compounds"

include "3.Grm"

define program
	[progDef] |
	[progDef] [body] |
	[progDef] [use_section] [body] |
	[progDef] [var_section] [body] |
	[progDef] [use_section] [var_section] [body]
	[progDef] [const_section] [body] |
	[progDef] [const_section] [var_section] [body] |
	[progDef] [use_section] [const_section] [var_section] [body]
end define

function main
	match [program]
	P[program]
end function
