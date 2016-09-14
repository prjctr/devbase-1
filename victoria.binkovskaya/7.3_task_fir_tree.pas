program task7_3;

var
	i, j, level, Nspace, Ncaret: integer;

begin
	writeln('Enter the height of fir-tree, please');
	readln(level);
	writeln();
	
	for i := 1 to level do
	begin
		Nspace := level - i;

		for j := 1 to Nspace do
		begin	
			write(' ');
		end;	

		Ncaret := i * 2 - 1;

		for j := 1 to Ncaret do
		begin
			write('^');	
		end;	
		writeln();		
	end;		
	readln();	
end.	