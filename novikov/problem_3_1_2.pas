program problem_3_1_2;
var
	selector: Integer;
	a: Integer;
	b: Integer;
	result: Real;
begin
	writeln('Available operations:');
	writeln('1) a+b');
	writeln('2) a-b');
	writeln('3) a*b');
	writeln('4) a div b');
	writeln('5) a mod b');
	writeln('6) a*a');


	writeln('Enter operations number');
	readln(selector);

	case selector of
		1: 
		begin
			writeln('Enter two operands');
			readln(a,b);
			result:= a + b;
		end;
		
		2: 
		begin
			writeln('Enter two operands');
			readln(a,b);
			result:= a - b;
		end;

		3: 
		begin
			writeln('Enter two operands');
			readln(a,b);
			result:= a * b;
		end;

		4: 
		begin	
			writeln('Enter two operands');
			readln(a,b);
			result:= a div b;
		end;

		5: 
		begin
			
			writeln('Enter two operands');
			readln(a,b);
			result:= a mod b;
		end;
		6: 
		begin
			writeln('Enter one operand');
			readln(a);	
			result:= a * a;
		end

		else 
			writeln('Invalid data');
	end;

	writeln('result is ', result:0:2);
	readln();
end.