program task6_3;

var
	i, j, mult: Integer;

begin
	i := 0;
	j := 0;
	mult := 0;

	for i := 1 to 10 do
	begin
		j := 4;
		mult := i * j;
		writeln(j,' * ',i,' = ',mult,' ');
		writeln();		
	end;

readln();
end.	