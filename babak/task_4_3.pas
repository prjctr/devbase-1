program task_4_3;
uses crt;
	var
	i:integer;
	k:integer;
	n:integer;
	indent:string;
		begin
		k:=2;
		n:=4;
		indent:='';
		for i:=1 to 20 do
		begin
			if (i mod 2)= 0 then
				begin
				textcolor (k);
				end
			else
				begin
				textcolor (n);
				end;
			writeln(indent,i,' Nadia,you are kind, honest and purposeful person. You will be able to achive all your goals');
		end;	
			indent:=indent+ ' ';
			Delay (500);
		readln();
		end.	