program Condition;
var
	I: Integer;
	J: Integer;

begin
	I:= 10;
	J:= 15;

	if(I > J) 
	then writeln('I ',I)
	else writeln('J ',J);

	if(J < 3) then
		begin
			J:= J+3;
			writeln(J);
		end;

	readln()
end.
