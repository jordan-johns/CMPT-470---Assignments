{ PASCAL GRAMMAR TEST 3 }
{ Full test! }

program Loops;

uses
	crt;
 
var
	Choice: Char;
	width: Integer;
	height: Integer;
	 
begin
	repeat
		Writeln('**MENU**');
		Writeln('a: Your favorite fruit');
		Writeln('b: Your second favorite fruit');
		Writeln('c: Your favorite vegetable');
		Writeln('d: Will print box of astericks');

		Readln(Choice);

		case Choice of
			'a': Writeln('You like apples');
			'b': Writeln('You like bananas');
			'c': Writeln('You like carrots');
		else
			begin
				if Choice = 'd' then
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
					end;
				else
					Writeln('You made an invalid choice');
			end;
		end;
	until choice = 0;
end.


