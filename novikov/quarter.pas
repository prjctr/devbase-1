program Quarter;
var
	month: Integer;
begin
	writeln('Please input month');
	readln(month);
	case month of
		1,2,3: writeln('This is first quarter');
		4,5,6: writeln('This is second quarter');
		7,8,9: writeln('This is third quarter');
		10,11,12: writeln('This is fourth quarter');

		else 
			writeln('Invalid data');
	end;
	readln();
end.