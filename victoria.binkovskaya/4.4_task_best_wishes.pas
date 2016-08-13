program task4_4;
uses crt;

var
	i: integer;
	indent: string;

begin
	indent := ' ';
	for i:=1 to 48 do	
	begin
		textcolor(i);
		case i of
		1,2,3:
			begin
				textcolor (1);
			end;
		4,5,6:
			begin
				textcolor (2);
			end;
		7,8,9:
			begin
				textcolor (3);
			end;	
		10,11,12:
			begin
				textcolor (4);
			end;	
		13,14,15:
			begin
				textcolor (5);
			end;
		16,17,18:
			begin
				textcolor (6);
			end;
		19,20,21:
			begin
				textcolor (7);
			end;
		22,23,24:
			begin
				textcolor (8);
			end;
		25,26,27:
			begin
				textcolor (9);
			end;
		28,29,30:
			begin
				textcolor (10);
			end;	
		31,32,33:
			begin
				textcolor (11);
			end;
		34,35,36:
			begin
				textcolor (12);
			end;	
		37,38,39:
			begin
				textcolor (13);
			end;
		40,41,42:
			begin
				textcolor (14);
			end;				
		43,44,45:
			begin
				textcolor (15);
			end;
		46,47,48:	
			begin
				textcolor (16);
			end;
		end;	
		writeln (indent, i,' ', 'Victoria, You are awesome today, Bro!');
		
		indent := indent + ' ';
		delay(500);
	end;
	readln ();
end.