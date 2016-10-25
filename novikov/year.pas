program leapYear;
var
	Year: Integer;
	message: String;
begin
	writeln('Please input year');
	readln(Year);

	if ((Year mod 4 = 0) and (Year mod 100 <> 0)) or (Year mod 400 = 0) then
	begin
		message:= ' is a leap year';
	end
	else message:= ' is not a leap year';

	writeln(Year, message);
	readln();
end.