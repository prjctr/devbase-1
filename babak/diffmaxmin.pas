program diffmaxmin;
var
X: integer;
Y: integer;
Z: integer;
M: integer;
L: integer;
D: integer;
Begin
writeln('Enter  tree numbers');
readln(X,Y,Z);
 if (X<Y) then
 	if (X<Z) then
	 	L:=X
	else 
		L:=Z
else
 	if (Y<Z) then
		L:=Y
 	else
 		L:=Z;
if (X>Y) then
 	if (X>Z) then
	 	M:=X
	else 
		M:=Z
else
 	if (Y>Z) then
		M:=Y
 	else
 		M:=Z;
D:=M-L;	
writeln (D); 
 readln();
end.