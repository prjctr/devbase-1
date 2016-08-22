program task5_4_1;

var 
	a, count, min, max, sum: Integer;
	average : Real;

begin
	count := 0;
	sum := 0;
	average := 0;

	repeat 
		writeln('Enter the number, please');
		readln(a);

		count := count + 1;
		if count = 1 then
		begin
			max := a;
		end;

		if a > max then
		begin
			max := a;
			min := a;
		end;

		if (a < min) and (a <> 0) then
		begin
			min := a;
		end;	

		sum := sum + a;

	until a = 0;

	average := sum / count;

	writeln('Min value is ', min);
	writeln('Max value is ', max);
	writeln('Sum value is ', sum);
	writeln('Average value is ', average:0:2);

	readln();
end.