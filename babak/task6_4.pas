program task6_4;
uses crt;
var i,j,k: integer;
begin
for i:=1 to 10 do begin
for j:=1 to 10 do begin
k:=j*i;
writeln(i, '*', j, '=',k);
end;
writeln;
end;
readln();
end.