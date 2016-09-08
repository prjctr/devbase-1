program task_12_1;

var
	a: array[1..10] of Integer = (2,5,2,7,9,2,5,3,1,7);
	i, j, x: Integer;

begin
	// randomize;
	i := 0;
	// a[i] := random(50) + 1;

	for j := 1 to 10 do
	begin
		for i := 1 to 10 - j do
		begin
			if a[i] > a[i + 1] then
			begin
				x := a[i];
				a[i] := a[i+1];
				a[i+1] := x;
			end;
		end;	
		
		for i := 1 to 10 do
		begin
			writeln(a[i]);
		end;
	end;	
	
	readln();
end.	