program task6_5;

var
	i, jay, bob, choise, sumjay, sumbob: Integer;

begin
	randomize;

	writeln('Enter your bet:');
	writeln('1 - Jay');
	writeln('2 - Bob');
	writeln();
	
	readln(choise);

	case choise of
		1: 
		begin
		 	writeln('You choose ', choise, ' - Jay');
		end; 
		2: 
		begin
		 	writeln('You choose ', choise, ' - Bob');
		end;
	else
	begin
		writeln('entering incorrect data');
	end;		
	end;

	writeln();
	readln();	

	i := 0;
	sumjay := 0;
	sumbob := 0;

	for i := 1 to 7 do
	begin
		jay := Random(4) + 3;
		sumjay := sumjay + jay;

		bob := Random(4) + 3;
		sumbob := sumbob + bob;

		writeln('Day ', i);
		writeln('Jay caught ', jay, ' pokemons (now he has ', sumjay, ')');		
		writeln('Bob caught ', bob, ' pokemons (now he has ', sumbob, ')');
	end;

	readln();
	writeln();
	writeln('Jay got ', sumjay);		
	writeln('Bob got ', sumbob);
	writeln();
	readln();

	if sumjay = sumbob then
	begin
		writeln('It is a tie.');
		writeln('You lose the bet.');	
	end;

	if sumjay > sumbob then
	begin
		writeln('Jay wins!');
		if choise = 1 then
		begin
			writeln('You won the bet.');
		end
		else
		begin
			writeln('You lose the bet.');
		end;
	end
	else 
	begin
		writeln('Bob wins!');
		if choise = 2 then
		begin
			writeln('You won the bet.');
		end
		else
		begin
			writeln('You lose the bet.');
		end;
	end;

	readln();	
end.	