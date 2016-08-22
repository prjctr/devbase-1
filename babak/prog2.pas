program prog2;
var 
  a:integer;
  b:integer;
  K:integer;
  L:integer;
  N:integer;
  M:real;
  O:integer;
  P:integer;
Begin
writeln('Enter two numbers');
readln (a,b);
K:=a+b;
writeln('a + b=',K);
L:=a-b;
writeln('a-b=',L);
N:=a*b;
writeln('a*b=',N);
M:=a/b;
writeln('a/b=',M:0:1);
O:=a div b;
writeln('a div b=',O);
P:= a mod b;
writeln('a mod b=',P);	
readln();
end.