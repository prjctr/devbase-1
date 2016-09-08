program task9_3;
uses crt;

var
	a, b: Integer;

function pow(x,z: Integer): Integer;
	var 
	i, res: Integer;

	begin
		res := 1;

		for i := 1 to z do
		begin
			res := res * x;
		end;

		pow := res;	
	end;

begin
	read(a,b);
	writeln(pow(a,b));
	
	readkey();
end.	
