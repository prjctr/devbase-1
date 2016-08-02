program task6_2a;
uses crt;
var
i:integer;
n:integer;
sum:integer;
begin
	randomize;
	sum:=0;
	for i:=1 to 30 do
		begin
			n:= random (50)+1;
			sum:=sum+n;
			writeln(n, 'Sum:',sum);
		end;
	readln();	
end.