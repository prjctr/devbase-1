program task5_2;
var
i:integer;
n:integer;
a:longInt;
b:longInt;
c:longInt;
begin
	writeln ('Enter n');
	readln (n);
	a:=1;
	writeln (a,' ');
	b:=1;
	writeln(b,' ');
		for i:=3 to n do
		begin
		writeln (a+b, ' ');	
		c:=b;
		b:=a+b;
		a:=c;
		end;
	readln ();
end.