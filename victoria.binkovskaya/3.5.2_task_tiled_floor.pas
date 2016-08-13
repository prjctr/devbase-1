program task3_5_2;
uses crt;

var
	i, j, k: real;
	n, b, w: integer;

begin
	writeln('Enter the size of floor, please');
	readln(i, j);

	k := i * j;
	n := Round(k) + 1;

	b := (n div 2) + (n mod 2);
	writeln('black: ', b);

	w := (n div 2);
	writeln('white: ', w);	

	readln();		
end.	