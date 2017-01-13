program task_14_1;

var 
	n: Integer;

function fact(n: Integer): Integer;
begin
	if n = 0 then
	begin
		fact := 1;
	end
	else
	begin
		fact := n * fact(n - 1);
	end;	
end;	
	// begin
	// 	result := 1;
	// 	factorial := 1;
 
	//     for i := 1 to n do
	//         result := result * i;
	//     	writeln('n! = ', result);
	// end;	

begin
	writeln('Enter the number, please');	
	readln(n);
	fact(n);
	writeln(fact(n));
	readln();
end.	
