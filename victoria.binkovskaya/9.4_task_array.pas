program task9_4;

var 
	a: array [ 1..10 ] of Integer;
	i: Integer;

begin

	for i := 1 to 10 do
	begin
		writeln('Enter number, please');
		readln(a[i]);
	end;

	for i := 10 downto 1 do 
	begin
		write(a[i], ' ');
	end; 

	writeln();

	for i := 10 downto 1 do 
	begin
		if (a[i] mod 2 = 1) then
		begin
			write(a[i], ' ');
		end;
	end; 	
	readln();
end.	