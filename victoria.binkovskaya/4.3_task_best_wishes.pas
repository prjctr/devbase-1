program task4_3;
uses crt;

var
	i: Integer;
	indent: String;

begin
	indent := ' ';
	
	for i := 1 to 20 do	
	begin

		if (i mod 2) = 0 then 
		begin
			textcolor(2);
		end

		else 
		begin
			textcolor(3);
		end;

		writeln (indent, i,' ', 'Victoria, You are awesome today, Bro!');

		indent := indent + ' ';
		delay(500);
	end;
	readln ();
end.