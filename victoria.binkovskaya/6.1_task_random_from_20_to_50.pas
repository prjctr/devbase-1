program task6_1;

var
	i, r: Integer;

begin
	i := 0;

	for i := 20 to 50 do
	begin
		r := Random(50) + 1;
		writeln(r);
	end;

	readln();	
end.	