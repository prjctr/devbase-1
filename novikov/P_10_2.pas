program P_10_2;
var
	s: String;
	letter: String;
	i: Integer;
	j: Integer;
begin
	letter:= 'a';
	j:= 0;

	writeln('Please enter the text');
	readln(s);

	for i := 0 to Length(s) do
	begin
		write(s[i],s[i]);
	end;

	for i := 0 to Length(s) do
	begin
		if s[i] = letter then
		j:= j + 1;
	end;
	writeln();
	writeln(letter,' was ',j,' times');
end.
