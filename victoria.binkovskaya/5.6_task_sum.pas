program task5_6;

var 
	sum, number: Integer;

begin
	writeln('Enter the number, please');
	readln(number);

	sum := 0;

	while number > 0 do
	begin
		sum := sum + number mod 10;
		number := number div 10;
	end;

	writeln('The sum is: ', sum);
	readln();
end.
