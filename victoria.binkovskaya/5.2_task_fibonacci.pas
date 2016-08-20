program task5_2;

var
	old1, old2, i: Integer;
	NewNumber: Integer;
	numberofnumbers: Integer;

begin
	old1 := 1;
	old2 := 1;

	writeln('Enter Quontity of Numbers');
	readln(numberofnumbers);

	i := 0;
	writeln('Fibonacci numbers:');

	while i < numberofnumbers do
	begin
		NewNumber := old1 + old2;
		writeln(NewNumber);
		
		old2 := old1;
		old1 := NewNumber;
		i := i + 1;	
	end;
	readln();
end.	