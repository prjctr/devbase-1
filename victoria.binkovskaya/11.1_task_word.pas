program cw_25_08;

var
	st, word, indent: String;
	i, leng: Integer;

begin
	writeln('Enter the line, please');
	readln(st);

	leng := length(st);
	word := '';
	indent := ' ';

	for i := 1 to leng do
	begin
		if st[i] <> indent then
		begin
			word :=  word + st[i];
		end
		else
		begin
			writeln(word);
			word := '';
		end;
	end;
	writeln(word);
	word := '';
	readln();
end.	

