program P_10_2;
var
	s: String;

procedure WriteDouble(s:String);
var
	i: Integer;

begin
	writeln('Double:');
	for i := 0 to Length(s) do
		begin
			write(s[i],s[i]);
		end;

	
end;

procedure CountLetterA(a:String);
var
	letter: String;
	i: Integer;
	count:Integer;
begin
	letter:= 'a';
	count:= 0;

	for i := 0 to Length(s) do
		begin
			if s[i] = letter then
			count:= count + 1;
		end;
	writeln();
	writeln('A count:');
	writeln(letter,' was ',count,' times');

end;


begin

	writeln('Please enter the text');
	readln(s);

	WriteDouble(s);
	writeln();
	CountLetterA(s);

	readln();
	
end.
