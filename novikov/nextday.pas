program NextDay;
var
	day: Integer;
	month: Integer;

	day_f: Integer;
	month_f: Integer;
begin

	writeln('Please write the day');
	readln(day);

	writeln('And the month');
	readln(month);

	if month <> 2 then
		begin
	 		if day < 30 then
	 		 begin
	 		 	day_f := day + 1; 
	 		 	month_f := month;	 		 	
	 		 end
	 		 
	 		else
	 		begin
	 		 	day_f := 1; 
	 		 	month_f := month + 1;
	 		 end 
	 		
		end
	else 
		begin
			if day < 28 then
			begin
				day_f := day +1; 
				month_f := month;
			end
			 
			else 
			begin
				day_f:= 1; 
				month_f := month +1;
			end
			
		end;

	writeln('The next day —', day_f,' of the month# ', month_f);
	readln();
		
end.