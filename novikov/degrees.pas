program Degrees;
var
	cel: Real;
	fahr: Real;
	kelv: Real;


begin
	writeln('Please enter the temperature in C degrees');
	readln(cel);
	fahr := (cel* 1.8) + 32;
	kelv := cel + 272.15;

	writeln('Fahrenheit ', fahr:0:2, ' F');
	writeln('Kelvin ', kelv:0:2, ' K');
	readln();


end.
