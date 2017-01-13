program task8_1;

var
	i, j, level, Nspace, Ncaret: integer;

begin
	writeln('Enter the height of fir-tree, please');
	readln(level);
	writeln();

//________________________________________
// 1. 
// vvvvv
//  vvv
//   v
	for i := 1 to level do
	begin
		Nspace := i + 1 - 2;

		for j := 1 to Nspace do
		begin	
			write(' ');
		end;	

		Ncaret := (level - i) * 2 + 1;

		for j := 1 to Ncaret do
		begin
			write('v');	
		end;	
		writeln();		
	end;	
//________________________________________	

	writeln();

//________________________________________
// 2.
// ^
// ^^^
// ^^^^^

for i := 1 to level do
	begin
		Ncaret := i * 2 - 1;

		for j := 1 to Ncaret do
		begin
			write('^');	
		end;	
		writeln();		
	end;	
//________________________________________

	writeln();	

//________________________________________
// 3.
//     ^
//   ^^^
// ^^^^^
	for i := 1 to level do
	begin
	    Nspace := (level * 2) - (i * 2);
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
//________________________________________

	writeln();	

//________________________________________
// 4.
// vvvvv
//   vvv
//     v

for i := 1 to level do
	begin
	    Nspace := (i * 2) - 2;
		for j := 1 to Nspace do
		begin	
			write(' ');
		end;

	    Ncaret := (level - i) * 2 + 1;

		for j := 1 to Ncaret do
		begin
			write('v');	
		end;	
		writeln();		
	end;			
//________________________________________

	writeln();

//________________________________________
// 5.
// vvvvv
// vvv
// v

	for i := 1 to level do
	begin
	    Ncaret := (level - i) * 2 + 1;

		for j := 1 to Ncaret do
		begin
			write('v');	
		end;	
		writeln();		
	end;		

	readln();	
end.	