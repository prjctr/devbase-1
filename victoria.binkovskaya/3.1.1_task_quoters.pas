program task3_1_1;

var 
m: integer;

begin 
writeln('Enter the number of month, please!');	
readln(m);
case m of
1,2,3:
	begin
	writeln('the first quoter');
	end;
4,5,6:	
	begin
	writeln('the second quoter');
	end;
7,8,9:
	begin
	writeln('the third quoter');	
	end;
10,11,12:
	begin
	writeln('the fourth quoter');
	end
else
writeln('invalid data');
end;
readln();
end.	