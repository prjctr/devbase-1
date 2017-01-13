program task9_4;

var 
	a1, n, step: Integer;
	result: Real;

function sum(a1, n, step: Integer): Real;
	var
		an, i: Integer;
		s: Real;

	begin
		s := 0;
		an := a1 + (n - 1) * step;
		s := (a1 + an) * n / 2;
		sum := s;
	end;

begin
	writeln('Enter the number, please');
	readln(a1, n, step);
	// step := 3;
	result := sum(a1, n, step);

	writeln(result:0:2);
	readln();
end.	
