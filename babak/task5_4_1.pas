program task5_4_1;
var
a:integer;
sum:integer;
count:integer;
max:integer;
min:integer;
avr:real;
begin
	count:=0;
		writeln ('Enter number');
		repeat
		count:=count+1;
		readln (a);
		if count = 1 then
		max:=a;
		min:=a;
		if a >max then
		max:=a;
		if a < min then
		min:=a;
		sum := 0;
		sum := sum+a;
		avr:=sum/count;
	until a=0;
	writeln ('Min value is ', min);
	writeln ('Max value is ', max);
	writeln ('Average value is ', avr);
	readln();
end.