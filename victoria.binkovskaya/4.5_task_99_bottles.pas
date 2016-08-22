program task4_5;
uses crt;

var
	i: integer;

begin
	for i:=9 downto 1 do	
	begin
		if (i > 1) then
		begin
			writeln (i,' ','bottles of beer on the wall,');
			writeln (i,' ','bottles of beer.');
		end	
		else
		begin
			writeln (i,' ','bottle of beer on the wall,');
			writeln (i,' ','bottle of beer.');
		end;
		
		
		writeln ('Take one down and pass it around,');

		if (i - 1 >= 1) then
		begin
			writeln (i - 1,' ','bottles of beer on the wall.');
		end	

		else
		begin
			writeln ('No more bottles of beer on the wall');
		end;

		writeln ();
		delay(1000);
	end;	
	readln ();
end.