program task_14_3;

var
	n: Integer;

function DigitSum(n: Integer): Integer;

begin
	if n < 10 then
	begin
		DigitSum := n;
	end
	else 
	begin
		DigitSum := DigitSum(n div 10) + n mod 10;		
	end;	
end;

begin
	writeln('Enter the number, please');
	readln(n);
	writeln(DigitSum(n));
	readln();
end.	
