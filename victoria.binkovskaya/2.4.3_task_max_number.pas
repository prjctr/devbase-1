program task2_4_3;

var 
  x, y, z: integer;

begin
	writeln('Enter any 3 numbers');
	readln(x, y, z);

	if (x > y) then
	begin 
		if (x > z) then
		begin
			writeln(x);
		end
		else 
		begin
			writeln(z);
		end;
	end	
	else
	begin
		if (y > z) then
		begin
			writeln(y);	
		end
		else 
		begin
			writeln(z);
		end;
	end;	
	readln();	
end.