program leastnumber;
var
X: integer;
Y: integer;
Z: integer;
Begin
writeln('Enter  tree numbers');
readln(X,Y,Z);
 if (X<Y) then
 	if (X<Z) then
	 	writeln (X, '- the least')
	else 
		writeln (Z, '-the least')
else
 	if (Y<Z) then
		writeln(Y, '- the least')
 	else
 		writeln (Z, '- the least');
if 
 readln();
end.