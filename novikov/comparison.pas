program Comparison;
var
	x: Integer;
	y: Integer;
	z: Integer;
	
begin
	writeln('Please input three numbers');
	readln(x, y, z);


	if (x > y) and (x > z) then
	begin
	writeln(X,' is a maximum number');
	readln();		
	end
	else
		begin
			if y > z then
			begin
				writeln(Y, ' is a maximum number');
				readln();
			end
			else
			begin
				writeln(Z, ' is a maximum number');
				readln();
			end
		end;
	
end.