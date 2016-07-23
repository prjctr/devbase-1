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
	end
	else 
	begin
	writeln('He is not born yet');
	end;
	if Age < 50 then
	begin
		if Age < 16 then
		begin
			message := 'Person is young'
		end
		else
		begin
			message := 'Person is grown-up'
		end;


	end
	else message := 'Person is old';

	writeln(message);
	readln();

end.