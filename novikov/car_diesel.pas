program CarDiesel;
var
	age: Integer;
	volume: Integer;
	price: Integer;
	multiplier: Real;
	multiplier_index1: Integer;
	multiplier_index2: Integer;
	tax: Real;
	import_fee: Real;
	sum: Real;
	VAT: Real;

begin
	writeln('Please input the age of a car');
	readln(age);

	writeln('Please input the volume of engine of a car');
	readln(volume);

	writeln('Please input the price of a car');
	readln(price);

	

	if age < 5 then
		begin
			if age < 1 then
			begin
				multiplier_index1 := 1
			end
			else
			begin
				multiplier_index1 := 2
			end
		end
	else
		begin
			multiplier_index1 :=3
		end;




	if volume < 2500 then
		begin
			if age < 1500 then
			begin
				multiplier_index2 := 1
			end
			else
			begin
				multiplier_index2 := 2
			end
		end
	else
		begin
			multiplier_index2 :=3
		end;


	if (multiplier_index1 = 1) and (multiplier_index2 = 1) then
	begin
		multiplier := 0.05;
	end;

		if (multiplier_index1 = 1) and (multiplier_index2 = 2) then
	begin
		multiplier := 1.36;
	end;

		if (multiplier_index1 = 1) and (multiplier_index2 = 3) then
	begin
		multiplier := 1.63;
	end;



	if (multiplier_index1 = 2) and (multiplier_index2 = 1) then
	begin
		multiplier := 0.16;
	end;

		if (multiplier_index1 = 2) and (multiplier_index2 = 2) then
	begin
		multiplier := 1.91;
	end;

		if (multiplier_index1 = 2) and (multiplier_index2 = 3) then
	begin
		multiplier := 2.18;
	end;



	if (multiplier_index1 = 3) and (multiplier_index2 = 1) then
	begin
		multiplier := 1.09;
	end;

		if (multiplier_index1 = 3) and (multiplier_index2 = 2) then
	begin
		multiplier := 2.72;
	end;

		if (multiplier_index1 = 3) and (multiplier_index2 = 3) then
	begin
		multiplier := 3.54;
	end;

tax := price * 0.1;
import_fee := multiplier * volume;
sum := price + tax + import_fee;
VAT := sum * 0.1;

writeln('Tax is ', tax:0:2, ' euro, ', 'Import fee is ', import_fee:0:2, ' euro, ', 'Sum is ', sum:0:2, ' euro, ', 'VAT is ', VAT:0:2, ' euro');
readln();

end.
