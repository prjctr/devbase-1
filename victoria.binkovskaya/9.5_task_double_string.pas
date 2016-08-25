program task9_5;
uses crt;

var 
	st: String;
	// newSt: String;
    i, count: Integer;

begin	
	writeln('Enter the line, please');
	readln(st);

	for i := 1 to length(st) do
	begin
	  	write(st[i]);
	  	write(st[i]);
  	end;

  	writeln();

  	// _________else_variants________

	// newSt := '';
	// for i := 1 to length(st) do
	// begin
	//       newSt := newSt + st[i] + st[i];
	// end;
	// writeln(newSt);
  	
	// i := 1;
	// repeat
	// begin
	// 	insert(st[i], st, i);
	// 	inc(i, 2);
	// end;	
	// until i > length(st);

	// ______end_of_else_variants_____

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