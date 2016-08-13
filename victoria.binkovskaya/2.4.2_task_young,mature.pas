program task2_4_2;

var 
  i: integer;

begin
writeln('Enter your age, please');
readln(i);
	if (i >= 1) and (i < 16) then
		begin 
			writeln ('Teen');
		end
	else	
		if (i <= 0) then
			begin
				writeln ('Under Development');
			end;
	if (16 <= i) and (i <= 49) then 
		begin
			writeln ('Young');
		end	
	else
		if (i >= 50) and (i <= 79) then
		begin
			writeln ('Mature');	
		end;	 
	if (i >= 80) and (i <= 149) then
		begin
			writeln ('Wise');	
		end	
	else
		if (i >= 150) then
			begin
				writeln ('incorrect data');	
			end;	 	
readln();	
end.