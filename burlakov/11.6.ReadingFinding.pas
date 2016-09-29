program read; {Вычитать файл в массив (процедура), проверить, есть ли число (функция) - 5 раз}
uses sysutils;
const n = 99;
var
	//f: textfile;
	m: array [1..n] of Longint;
	k: Longint;
	i: Integer;
procedure reading(fname: string);
var
		f: textfile;
		i: Integer;
		j: Longint;	
begin
	assign(f,'numbers.txt');
	reset(f);
	for i :=1 to n do
	begin
		readln(f,j);
		m[i] := j;
	end;
	close(f);	
end;
function finding (fnd: Longint): Integer;
var
	j,low,high: Integer;
begin
	low := 1;
	high := length(m);
	j := 0;
	repeat
		j := (high + low) div 2;
		
		if (m[j] = k) then break;

		if k < m[j] then
		begin
			low := low;
			high := j-1;
		end
		else
		begin
			low := j+1;
			high := high;				
		end;
	until (high < low);

	if (high < low) then
		finding := -1
	else	
		finding := j;
end;
begin
	reading('numbers.txt');
	for i := 1 to 5 do
	begin
		writeln('Enter number from 31300 to 57800');
		readln(k);
		writeln(finding(k));
		writeln;
	end;	
end.	