program task7_3;

var
	i, j: Integer;
	st: String;

begin
	writeln ('Enter the number, please');
	readln(i);

	st := ''; 
	while i <> 0 do 
	begin
	    j := i mod 2; 
	    i := i div 2;

	    if  j = 0 then
	    begin
	    	st := '0' + st; 
	    end
	    else
	    begin 
	    	st := '1' + st;
	    end;	
	end;

	writeln(st);
	readln();
end.
