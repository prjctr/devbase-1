program task7_1;

var
	i, j, sum: Integer;

begin
	i := 0;
	j := 0;
	sum := 0;

	writeln('Enter the number, please');
	readln(i);

	while i > 0 do
	begin
		j := (i mod 10);
		i := (i div 10);

		if (j mod 2) = 0 then 
		begin
			writeln ('even');
			sum := sum + j;
		end
		else
		begin
			writeln ('odd');
		end;
	end;		
	readln();
end.	