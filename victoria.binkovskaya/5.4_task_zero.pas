program task5_4;

var
	i, a: Integer;

begin	
	for i := 1 to 10 do
	begin
		writeln('Enter the number, please');
		readln(a);

		if a = 0 then
		begin
			writeln('zero');
			break;
		end;
		writeln(a);
	end;
	
	readln();
end.		