program problem1;
var
	num1: Integer;
	num2: Integer;

	sum: Integer;
	dif: Integer;
	dv: Real;
	dv_i: Integer;
	
	leftover: Integer;


begin
	writeln('Hello, could you please write a number');
	readln(num1);
	writeln('And the second one');
	readln(num2);

	sum := num1 + num2;
	writeln('Here is the sum of numbers ', sum);
	readln();

	dif := num1 - num2;
	writeln('Here is the difference of numbers ', dif);
	readln();

	dv := num1 / num2;
	writeln('Here is the division of numbers ', dv:0:2);
	readln();

	dv_i := num1 div num2;
	writeln('Here is the Integer division of numbers ', dv_i);
	readln();

	writeln('Here is the approximated division of numbers ', dv:0:0);
	readln();

	leftover := num1 mod num2;
	writeln('Here is the division leftover of numbers ', leftover);
	readln();

	writeln('Good bye!');
	readln();


end.