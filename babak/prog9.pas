program prog9;
var
h: integer;
m: integer;
Begin
writeln('Enter the time');
readln(h,m);
if (m<=58) then
	begin
	m:= m+1;
	end
else
	begin
	m:=0;
	if h<=22 then
		begin
		h:=h+1;
		end
	else
		begin
		h:=0;
		end;
	end;
writeln(h,' ', m);
 readln();
end.