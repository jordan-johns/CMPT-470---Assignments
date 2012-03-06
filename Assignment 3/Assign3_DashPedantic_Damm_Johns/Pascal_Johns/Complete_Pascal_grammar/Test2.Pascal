{ PASCAL GRAMMAR TEST 2 }
{ Determines which birthday comes first }

program Loops;
 
var
	year1: Integer;
	month1: Integer;
	day1: Integer;
	year2: Integer;
	month2: Integer;
	day2: Integer;
 
begin
	year1 := 1984;
	month1 := 09;
	day1 := 07;

	year2 := 1989;
	month2 := 06;
	day2 := 24;

	if year1 > year2 then
		begin
			Writeln('Person 1 has first birthday');
		end;
	else
		begin
			if year2 > year1 then
				begin
					Writeln('Person 2 has first birthday');
				end;
			else
				begin
					if month1 > month2 then
						begin
							Writeln('Person 1 has first birthday');
						end;
					else
						if month2 > month1 then
							begin
								Writeln('Person 2 has first birthday');
							end;
						else
							begin
								if day1 > day2 then
									begin
										Writeln('Person 1 has first birthday');
									end;
								else
									if day1 > day2 then		
										begin
											Writeln('Person 2 has first birthday');
										end;
									else
										begin
											Writeln('Person 1 and Person 2 share a birthday!');
										end;
							end;
				end;
		end;
end.


