program Yolka2;{Дорисовывание еще одной елочки в файл}
uses sysutils;
var
	f: textfile;
	i,j: Integer;
begin
	assign (f,'Yolka.txt');
	append (f);
	for i := 1 to 10 do
	begin
		for j := 1 to 10-i do 
			write(f,' ');
		for j := 1 to i*2-1 do
			write(f,'^');
		writeln(f);	
	end;
	close(f);	
end.	