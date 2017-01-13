program task6_2_1;

var
	i, r, sum: Integer;

begin
	randomize;
	
	i := 0;
	sum := 0;

	for i := 1 to 30 do
	begin
		r := Random(50) + 1;
		sum := sum + r;
		writeln(r);
	end;
	
	writeln('The sum of randoms is:', sum);
	readln();	
end.	