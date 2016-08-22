program task4_1;
uses crt;

var
	i: integer;
	indent: string;

begin
	indent := ' ';

	for i := 1 to 20 do	
	begin
		textcolor(i);

		if (i = 16) then 
		begin
			textcolor (i - 12);
		end;

		writeln (indent, i,' ', 'Victoria, You are awesome today, Bro!');
		
		indent := indent + ' ';
		delay(500);
	end;
	readln ();
end.