program AgeCheck;
var
	Age: Integer;
	message: String;
begin
	writeln('Please enter the age of a person');
	readln(Age);

	if Age > 0 then
	begin
	writeln('Ok!');
		if Age < 50 then
		begin
			if Age < 16 then
				begin
				message := 'Person is young';
				end
			else
				begin
				message := 'Person is grown-up';
				end
		end
		
		else 
			message := 'Person is old';
		end
	
	else 
	begin
	writeln('He is not born yet');
	end;
	

	writeln(message);
	readln();

end.