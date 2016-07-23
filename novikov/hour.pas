program time;
var
	Min: Integer;
	Hour: Integer;
begin
	writeln('Please enter hour and minutes');
	readln(Hour, Min);

	if Min < 59 then
	begin
	Min := Min +1;
		
	end

	else
	begin
		
	if Hour < 23 then
		begin
		Min := 0;
		Hour := Hour + 1;
		
		end
	else
		begin
			Min := 0;
			Hour := 0;
		end

	end;


end.