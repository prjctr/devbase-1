program task2_2;

var
	a: Integer;
	b, c: Real;
	
begin
	writeln('Enter the number of degrees Celsius');
	readln(a);

	b := a + 273.15;
	writeln('Kelvin scale', b:8:2);

	c := 9 / 5 * a + 32;
	writeln('Fahrenheit scale', c:8:2);

	readln();
end.	