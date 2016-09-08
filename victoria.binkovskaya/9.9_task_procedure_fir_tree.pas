program task2_funk;
uses crt;

procedure WriteTree(level: Integer);
	var	
		i,j: integer;
	begin
		for i:=1 to level do
		begin
			for j := 1 to level - i do	
				write(' ');
			for j := 1 to i * 2 - 1 do
				write('^');	
			writeln ();		
		end;		
		readkey();
	end;

begin
	writeTree (10);
end.	
