{ PASCAL GRAMMAR TEST 1 }
{ Prints a box of astericks! }

program Loops;
 
var
	width: Integer;
	height: Integer;
	i: Integer;
	j: Integer;
 
begin
	Writeln('Enter the width: ');
	Readln(width);
	Writeln('Enter the hieght: ');
	Readln(height);

	for i := 1 to height do
		begin
			for j := 1 to width do
				begin
					Write('*')
				end;			
		end;	
end.


