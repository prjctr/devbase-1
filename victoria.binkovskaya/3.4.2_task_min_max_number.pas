program task3_4;

var 
	x, y, z, min, max, d, c: integer;

begin
	for c := 1 to 6 do
	begin
		writeln('Enter any 3 numbers');
		readln(x,y,z);

		min := x;
		max := x;

		if y > max then
			max := y;
		if y < min then
			min := y;

		if z > max then
			max := z;
		if z < min then
			min := z;
		// _______________________________

		// if (x > y) and (x > z) then 
		// begin
		// 	max:=x;
							
		// 	if (y > z) then
		// 	begin
		// 		min:=z;
		// 	end
		// 	else 
		// 		begin
		// 			min:=y;
		// 		end;
		// end;	
		
		// if (y > x) and (y > z) then 
		// begin
		// 	max:=y;
		// 	if (x > z) then
		// 		begin
		// 			min:=z;	
		// 		end	
		// 	else 
		// 		begin
		// 			min:=x;
		// 		end;
		// end;

		// if (z > x) and (z > y) then 
		// begin
		// 	max:=z;
		// 	if (x > y) then
		// 		begin
		// 			min:=y;	
		// 		end	
		// 	else 
		// 		begin
		// 			min:=x;
		// 		end;
		// end;
		// _______________________________

		d := max - min;	
		writeln(max,'-', min, '=', d);			
	end;		
	readln();	
end.