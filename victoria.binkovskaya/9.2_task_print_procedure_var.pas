program task3_funk;

var 
	a, c: Integer;

procedure print(var b: Integer);

begin
	b := b + 1;
	writeln(b);
end;

begin
	a := 1;
	c := 3;
	print(a);
	writeln(a);
	print(c);
	writeln(c);
	readln();
end.	
