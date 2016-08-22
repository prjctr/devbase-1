program task3_4;

var 
  x, y, z, c: integer;

begin
	for c := 1 to 6 do
	begin
		writeln('Enter any 3 numbers');
		readln(x,y,z);

		if (x < y) then 
		begin 
			if (x < z) then
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
			if (y < z) then
			begin
				writeln(y);	
			end	
			else 
			begin
				writeln(z);
			end;
		end;		
	end;		
	readln();	
end.