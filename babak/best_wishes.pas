program 4.1;
uses CRT;
	var
	i:integer;
	indent:string;
		begin
		indent:='';
			for i:=1 to 20 do
			begin
			textcolor(i);
			if i=16 then
			begin
			textcolor (i-12);
			writeln(indent,i,' Nadia,you are kind, honest and purposeful person. You will be able to achive all your goals');
			end
			else 
			begin
			writeln(indent,i,' Nadia,you are kind, honest and purposeful person. You will be able to achive all your goals');
			end;
			indent:=indent+ ' ';
			Delay (500);
			end;
		readln();
		end.	