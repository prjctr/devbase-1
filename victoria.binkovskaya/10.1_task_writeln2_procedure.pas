program task9_1;
uses crt;

procedure writeln2(st: String);
	var 
	i, l: Integer;

	begin
		l := Length(st);
		for i := 1 to l do
		begin
			write(st[i]);
			delay (50);
		end;
		writeln();
	end;	

begin	
	writeln2('Have a nice day');
	writeln2('Have a great day');
	writeln2('Have a good mood');
	readln();
end.	