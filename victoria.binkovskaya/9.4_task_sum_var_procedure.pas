program task9_4;

var 
	result, n: Integer;

procedure sum(n: Integer; var res: Integer);
	var
		i, s: Integer;

	begin
		s := 0;
		for i := 1 to n do
		begin
			s := s + i;
		end;	
		res := s;
	end;

begin
	writeln('Enter the number, please');
	readln(n);
	sum(n, result);
	writeln(result);
	readln();
end.	
