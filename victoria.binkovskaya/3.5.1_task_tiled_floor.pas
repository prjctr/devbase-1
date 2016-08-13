program task3_5_1;

var
	i, j, k, b, w: integer;

begin
	writeln('Enter the size of floor, please');
	readln(i, j);

	k := i * j;

	b := (k div 2) + (k mod 2);
	writeln('black: ', b);

	w := (k div 2);
	writeln('white: ', w);	

	readln();		
end.	