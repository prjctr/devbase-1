program task9_5;
uses crt;

var 
	st: String;
    i, count: Integer;

begin	
	writeln('Enter the line, please');
	readln(st);

	i := 1;

	repeat
	begin
		insert(st[i], st, i);
		inc(i, 2);
	end;	
	until i > length(st);

	writeln(st);

	count := 0;

	for i := 1 to length(st) do
	begin
	  	if st[i] = 'a' then 
	  	begin
	  		count := count + 1;
	  	end;
  	end;	

	writeln('Quantity of letters "a": ', count);
	readln();

end.	