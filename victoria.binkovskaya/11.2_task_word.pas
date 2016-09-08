program cw_25_08;

var
	st, word: String;
	i, leng, osi: Integer;

begin
	writeln('Enter the line, please');
	readln(st);

	leng := length(st);
	word := '';
	
	for i := 1 to leng do
	begin
		osi := Ord(st[i]);

		if ((osi >= 65) and (osi <= 90)) or ((osi >= 97) and (osi <= 122)) then
		begin
			word := word + st[i];
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

