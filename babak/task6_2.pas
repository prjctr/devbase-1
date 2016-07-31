program task6_2;
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
			writeln(n);
		end;
		writeln ('Sum is ', sum);	
	readln();	
end.