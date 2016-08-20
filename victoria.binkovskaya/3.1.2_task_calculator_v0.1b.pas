program task3_1_2;

var 
	operand1: Integer;
	operand2: Integer;
	operation: Integer;
	result: Integer;

begin
	writeln('Calculator v0.1b');
	writeln('Available operations');

	writeln('1: a+b');
	writeln('2: a-b');
	writeln('3: a*b');
	writeln('4: a div b');
	writeln('5: a mod b');
	writeln('6: a^2');

	writeln();

	writeln('Enter operation number:');
	readln(operation);

	writeln('Enter operands:');
	readln(operand1, operand2);

case operation of
1:	
	begin
	result := operand1 + operand2;
	end;
2:	
	begin
	result := operand1 - operand2;
	end;
3:
	begin
	result := operand1 * operand2;
	end;	
4:
	begin
	result := operand1 div operand2;
	end;
5:
	begin
	result := operand1 mod operand2;
	end;	
6:
	begin
	result := (operand1 * operand1);
	end;
end;	
	writeln('Result is ', result);
	readln();
end.	