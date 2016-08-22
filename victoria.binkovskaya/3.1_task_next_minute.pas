program task3_1;

var 
	h, m, c: integer;

begin
	for c := 1 to 10 do
	begin
		writeln('Enter the time, please');
		readln(h, m);

		if (h > 23) or (m > 59) or (h < 0) or (m < 0) then
		begin 
			writeln('entering incorrect data');
			continue;
			// exit;
		end;

		if (m <= 58) then 
		begin
			// this code is executed when m <= 58
			m := m + 1;
		end
		else
		begin
		// this code is executed when is NOT m <= 58
			if (h <= 22) then
			begin
				// this code is executed when is NOT m <= 58
				// this code is executed when h <=22
				h := h + 1;
			end

			else
			begin
				// this code is executed when is NOT m <= 58
				// this code is executed when is NOT h <=22
				h := 0;
			end;
			m := 0;
		end;
			writeln (h:02,':',m:02);
	end;		
	readln();	
end.