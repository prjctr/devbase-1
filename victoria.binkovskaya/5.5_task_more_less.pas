program task5_5;
uses crt;

var 
	i, number: Integer;

begin
	Randomize;
	i := random(100) + 1;

	repeat 
	begin
		writeln('Enter the number, please');
		readln(number);

		if (number <= 0) or (number > 100) then
		begin
			writeln('Entering incorrect data');
			continue;
		end;

			if number < i then
			begin
				writeln('more');
			end;
				
			if number > i then
			begin
				writeln('less');
			end;
	end;	
	until number = i;

	writeln('You win!');
	readln();
end.