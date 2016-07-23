program tile;
var
N:integer;

Begin
writeln('Enter the number of tiles');
readln(N);
if (N mod 2)=0 then
 	begin
  		writeln ('black ',N div 2);
  		writeln ('white ',N div 2);
 		end
else
	begin
	writeln ('black ',N div 2+1);
	writeln ('white ', N div 2);
	end;
readln();
end.