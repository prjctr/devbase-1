program PrimeNumber;
var
	number: Integer;
	Prime: Boolean;
	i:Integer;
	res:Integer;
begin
	writeln('Please enter the number');
	readln(number);
	res:= 1;

	for i := 2 to (number - 1) do
	begin
		res:= number mod i;
		if res = 0 then
		begin
		Prime:= False;
		break;
		end
		
		else
		Prime:= True;
	end;

	write('The number is');
	if Prime = False then
		write(' not prime')
	else
		write(' prime');

	readln();

end.
