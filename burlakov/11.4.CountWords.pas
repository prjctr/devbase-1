program CountWords; {Подсчет слов в файле}
uses sysutils;
var
	f: textfile;
	n: String;
	l,j,i,wrd,count: integer;
begin
	//assign(f,'273read.txt');
	assign(f,'slacktest.txt');
	reset(f);
	wrd := 0;
	while not eof(f) do
	begin
		readln(f,n);
		l := Length(n);
		count := 1;
		for i := 1 to l do
		begin
			j := ord(n[i]);
			if ((j >= 65) and (j <= 90)) or ((j >= 97) and (j <= 122)) then
				count := 0
			else
			begin
				if count = 0 then
				begin
					wrd := wrd + 1;
					count := 1;
				end;	
			end;		
		end;
		if i = l then
			if ((j >= 65) and (j <= 90)) or ((j >= 97) and (j <= 122)) then
				wrd := wrd + 1;
	end;	
	close(f);
	writeln(wrd);
end.