program NumberCheck;
var
	num: Integer;
	message: String;

begin
	writeln('Please input number');
	readln(num);
	if num mod 2 = 0 then
	begin
		if num mod 10 = 0 then
		begin
		message := 'Number is round and even';
		end
		else 
		begin
		message := 'Number is even and not round';
		end
	end
	else message := 'Number is odd';

	writeln(message);

end.
