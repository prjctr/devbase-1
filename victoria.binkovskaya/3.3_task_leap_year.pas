program task3_3;

var
	i: Longint;

begin
	writeln ('Enter the year, please');
	readln (i);

	if (i mod 4) = 0 then

		if (i mod 100 = 0) and (i mod 400 <> 0)  then
		begin
			writeln ('Regular Year');	
		end
		
		else
		begin
			writeln ('Leap Year');
		end

	else
		begin
			writeln ('Regular Year');		
		end;

	readln ();
end.	