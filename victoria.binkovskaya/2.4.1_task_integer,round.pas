program task2_4_1;

var 
  i: integer;

begin
	writeln('Enter number');
	readln(i);

	if (i mod 2) = 0 then 
	begin 
		writeln ('correct');
	end
	
	else 
	begin
		writeln('falce');
	end;

	if (i mod 10) = 0	then
	begin
		writeln ('correct');	
	end
	
	else 
	begin
		writeln('falce');
	end;	

	readln();	
end.
