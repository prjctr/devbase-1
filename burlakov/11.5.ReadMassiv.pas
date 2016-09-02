program read; {Вычитать файл в массив, проверить есть ли число}
uses sysutils;
const n = 99;
var
	f: textfile;
	m: array [1..n] of Longint;
	j,k: Longint;
	i: integer;
begin
	assign(f,'numbers.txt');
	reset(f);
	for i :=1 to n do
	begin
		readln(f,j);
		m[i] := j;
	end;	
	close(f);
	writeln('Enter number from 31300 to 57800');
	readln(k);
	for i := 1 to n do
	begin
		if m[i] = k then
		begin
			writeln('Yes, there is');
			break;
		end
		else
		begin
			if i = n then
				writeln('Not found')
			else
				continue;					
		end;
	end;
end.	