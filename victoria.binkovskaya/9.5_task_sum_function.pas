program task9_3;

var 
	result, n: Integer;

function sum(n: Integer): Integer;
	var
		i, s: Integer;

	begin
		s := 0;
		for i := 1 to n do
		begin
			s := s + i;
		end;	
		sum := s;
	end;

begin
	writeln('Enter the number, please');
	readln(n);

	result := sum(n);

	writeln(result);
	readln();
end.	
