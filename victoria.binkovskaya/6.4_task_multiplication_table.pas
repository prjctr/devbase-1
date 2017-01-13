program task6_4;

var
	i, j, mult: Integer;

begin
	i := 0;
	j := 0;
	mult := 0;

	for i := 1 to 10 do
	begin

		for j := i to 10 do
		begin
			mult := i * j;
			writeln(i,' * ',j,' = ',mult,' ');
		end;

	writeln();		
	end;
		
readln();
end.	