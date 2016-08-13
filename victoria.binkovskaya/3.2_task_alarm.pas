program task3_2;

var 
  d, m, c: integer;

begin
	for c := 1 to 5 do
	
	begin
		writeln('Enter the day of week and the number of month, please');
		readln(d, m);

		if (d > 7) or (d < 0) or (m > 12) or (m < 0) then
		begin 
			writeln ('entering incorrect data');
			continue;
		end;

		if (m = 7) then
		begin
			writeln('off');			
		end

		else	
			if (d <= 5) then 
			begin
				writeln('7:00');
			end

			else
			begin
				writeln('10:00');
			end;
	end;			
	readln();	
end.