program task9_3;
uses crt;

var 
	st: array [ 1..256 ] of Char;
	i, l: Integer;

begin	
	st := 'Have a nice day';
	l := Length(st);
	for i := 1 to l do
	begin
		write(st[i]);
		delay (50);
	end;
	
	readln();
end.	