program prog11;
var
month: integer;
date: integer;
Begin
writeln('Enter month and date');
readln(month,date);
if (month>12) or (date>7) then
	begin
		writeln ('wrong data');
	end
else
	if (month = 7) then
 	begin
  	if (date <=5) then
 	writeln ('10:00')
 	else
 	writeln ('off');
 	end
	else
	begin
	if (date <=5) then
 	writeln ('07:00')
 	else
 	writeln ('10:00');
	end;
readln();
end.