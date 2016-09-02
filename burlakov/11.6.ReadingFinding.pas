program read; {Вычитать файл в массив (процедура), проверить, есть ли число (функция) - 5 раз}
uses sysutils;
const n = 99;
var
	f: textfile;
	m: array [1..n] of Longint;
	k: Longint;
	i: Integer;
procedure reading;
var
		i: Integer;
		j: Longint;	
begin
	for i :=1 to n do
	begin
		readln(f,j);
		m[i] := j;
	end;	
end;
function finding (fnd: Longint): String;
var
	i: Integer;
begin
	for i := 1 to n do
	begin
		if m[i] = k then
		begin
			finding := 'Yes, there is!';
			break;
		end
		else
		begin
			if i = n then
			finding := 'Not found.'
			else
				continue;					
		end;
	end;	
end;	
begin
	assign(f,'numbers.txt');
	reset(f);
	reading;
	close(f);
	for i := 1 to 5 do
	begin
		writeln('Enter number from 31300 to 57800');
		readln(k);
		writeln(finding(k));
		writeln;
	end;	
end.	