program task5_1;

var
	i: Integer;
	a, b: String;

begin	
	for i := 1 to 20 do
	begin
		a := '';
		b := '';

		if (i mod 3)=0 then
			a := (' Tic');
		if (i mod 5)=0 then
			b := (' Tac');
			
		writeln(i, a, b);	
	end;
	readln();
end.


