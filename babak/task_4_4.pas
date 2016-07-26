program task_4_4;
uses crt;
	var
	i:integer;
	k:integer;
	indent:string;
		begin
		indent:='';
		for i:=1 to 20 do
			begin
				for k:=1 to 3 do
				begin
				textcolor (i);
				writeln(indent,i,' Nadia,you are kind, honest and purposeful person. You will be able to achive all your goals');	
				indent:=indent+ ' ';
				Delay (500);
				end;
			end;
		readln();
		end.	