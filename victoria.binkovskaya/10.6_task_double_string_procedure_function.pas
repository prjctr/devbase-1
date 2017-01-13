program task10_6;
uses crt;

var 
	str: String;
	count: Integer;

procedure writeDouble(st: String); 
	var
		i: Integer;

	begin  
		for i := 1 to length(st) do
		begin
		  	write(st[i]);
		  	write(st[i]);
	  	end;
  	writeln();
  	end; 

function FindLetter(st: String): Integer;
	var
		i: Integer;

	begin
	    count := 0;

		for i := 1 to length(st) do
		begin
		  	if (st[i] = 'a') then 
		  	begin
		  		count := count + 1;
		  	end;
	    end; 
	    FindLetter := count;
	end;       

begin	
	writeln('Enter the sentence, please');

	readln(str);

    writeln('Result:');
	writeDouble(str); 

	writeln('Result:');
	writeln('Quantity of letters "a": ', FindLetter(str));

	readln();
end.	