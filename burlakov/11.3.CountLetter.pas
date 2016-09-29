program reading; {Подсчет печатных знаков}
uses sysutils;
var
	f: textfile;
	n: String;
	l,j,i: integer;
	count: Longint;
begin
	//assign(f,'273read.txt');
	assign(f,'STARTHAK.TXT');
	reset(f);
	count := 0;
	while not eof(f) do
	begin
		readln(f,n);
		l := Length(n);
		for i := 1 to l do
		begin
			j := ord(n[i]);
			if ((j >= 65) and (j <= 90)) or ((j >= 97) and (j <= 122)) then
				count := count + 1;	
		end;
	end;	
	close(f);
	writeln(count);
end.