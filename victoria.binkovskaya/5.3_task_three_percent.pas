program task5_3;

var
	money, year: Integer;
	percent, oneyear: Real;

begin
	writeln('Enter the quantity of money, please');
	readln(money);

	oneyear := money;
	percent := money * 0.03;

	for year := 1 to 5 do
	begin
		oneyear := oneyear + percent;
		
		writeln(year, ' year -', oneyear:0:2);
	end;	

	readln(); 
end.	