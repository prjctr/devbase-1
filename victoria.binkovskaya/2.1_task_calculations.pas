program task2_1;

var
	a, b, i: Integer;
	c: Real;

begin
	writeln('Enter 2 numbers');
	readln(a,b);

	i:=a+b;
	writeln('a+b=',i);

	i:=a-b;
	writeln('a-b=',i);

	i:=a*b;
	writeln('a*b=',i);

	c:=a/b;
	writeln('a/b=',c:3:1);

	i:=a div b;
	writeln('a div b=',i);

	i:=a mod b;
	writeln('a mod b=',i);
	
	readln();
end.	