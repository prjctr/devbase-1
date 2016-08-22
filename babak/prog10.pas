program prog10;
var
year: integer;
Begin
writeln('Enter year');
readln(year);
if (year mod 4)=0 then
 	begin
 	if (year mod 100)<>0 then
 		begin
 		writeln ('leap-year');
 		end
 	else
		begin
		if (year mod 400)=0 then
			begin
			writeln ('leap-year');
			end
		else
			begin
			writeln ('not leap-year');
			end;
		end;
	end		
else
	begin
	writeln ('not leap-year');
	end;
readln();
end.