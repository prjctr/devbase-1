program task5_5;
var
    a: integer;
    c: integer;
begin
    randomize;
    a := random(100);
    writeln('Enter number: ');
    readln(c);
    while a <> c do begin
        writeln('Enter number: ');
        readln(c);
        if c > a then
            writeln('<')
        else
            if c < a then
                writeln('>')
            else
                writeln('You win');
    end;
readln();
end.