program task3_funk;

var 
	result, n: Integer;
	// step: Integer;

function sum(n, step: Integer): Integer;
	var
		i, s, item: Integer;

	begin
		s := 0;
		item := 1;
		for i := 1 to n do
		begin
			s := s + item;
			item := item + step;
		end;	
		sum := s;
	end;

begin
	writeln('Enter the number, please');
	readln(n);
	// step := 3;
	result := sum(n, 3);
	writeln(result);
	readln();
end.	
