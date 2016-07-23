program  BellTime;
var
	Bell: String;
	day: Integer;
	month: Integer;
begin
	writeln('Could you please input day of the week');
	readln(day);

	writeln('Could you please input month');
	readln(month);


	if month <> 7 then
		begin
			if day <= 6 then
			Bell := '7:30'
			else Bell := '10:00'
			
		end

	else Bell := 'No alarm for today';

	writeln(Bell);
	
end.
