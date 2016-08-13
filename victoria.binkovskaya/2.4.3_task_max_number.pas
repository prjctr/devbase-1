program task2_4_3;

var 
  x, y, z: integer;

begin
	writeln('Enter any 3 numbers');
	readln(x, y, z);

	if (x > y) then 
	begin 
		if (x > z) then
			writeln(x);
	end

	else 
	begin
		if (x < z) then
			writeln(z);
	end;

	if (x < y) then
	begin
		if (y > z) then
			writeln(y);	
	end
	else 
	begin
		if (y < z) then
			writeln(z);
	end;

	readln();	
end.