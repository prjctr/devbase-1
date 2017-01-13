program task9_2;

var 
	a: array [ 1..7 ] of Integer;
	i: Integer;
	// i, j, k, l, m, n, o: Integer;

begin

	for i := 1 to 7 do
	begin
		writeln('Enter number, please');
		readln(a[i]);
	end;

	for i := 1 to 7 do 
	begin
		if (a[i] mod 2 = 0) then
		begin
			writeln (a[i]);
		end;
	end; 	
	// writeln('Enter 1 number, please');
	// readln(i);	
	// writeln('Enter 2 number, please');
	// readln(j);
	// writeln('Enter 3 number, please');
	// readln(k);
	// writeln('Enter 4 number, please');
	// readln(l);
	// writeln('Enter 5 number, please');
	// readln(m);
	// writeln('Enter 6 number, please');
	// readln(n);
	// writeln('Enter 7 number, please');
	// readln(o);

	// if (i mod 2) = 0 then
	// 	writeln(i);

	// if (j mod 2) = 0 then
	// 	writeln(j);
	
	// if (k mod 2) = 0 then
	// 	writeln(k);

	// if (l mod 2) = 0 then
	// 	writeln(l);

	// if (m mod 2) = 0 then
	// 	writeln(m);

	// if (n mod 2) = 0 then
	// 	writeln(n);
		
	// if (o mod 2) = 0 then
	// 	writeln(o);						


	readln();
end.	