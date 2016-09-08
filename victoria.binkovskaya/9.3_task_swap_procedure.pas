program task7_funk;
var
	a: Integer;
	b: Integer;

procedure swap(var a, b: Integer);
	var	
		c: integer;
	begin
		c := b;
		b := a;
		a := c;
	end;

begin
	writeln('Enter two numbers, please');
	readln(a, b);
	swap(a, b);
	writeln(a,' ', b);
	readln();
end.	
