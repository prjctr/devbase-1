program P_10_1;
var
	arr1: array[1..10] of Integer;
	i:Integer;
begin
	writeln('Enter 10 numbers');

	for i := 1 to Length(arr1) do
	begin
		readln(arr1[i]);
	end;

	for i := Length(arr1) downto 1 do
	begin
		writeln(arr1[i]);
	end;

	for i := Length(arr1) downto 1 do
	begin
		if (arr1[i] mod 2) > 0 then
		begin
		writeln(arr1[i]);
			
		end;
		
	end;

	for i := 0 to Length(arr1) do
	begin
		write(arr1[i]);
	end;

end.
