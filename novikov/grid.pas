program Grid;
var
	Row: Integer;
	Column: Integer;
	black_tile: Integer;
	white_tile: Integer;

begin
	writeln('Please input the number of columns');
	readln(Row);

	writeln('Please input the number of row');
	readln(Column);
	

	if Row mod 2 > 0 then
		begin
			if Column mod 2 > 0 then
			begin
				
				black_tile := (Row * Column) div 2 + 1;
				white_tile := (Row * Column) - black_tile;
			end
			else

			begin
				
			black_tile := (Row * Column) div 2 ;
			white_tile := (Row * Column) - black_tile;

			end

		end
	else
		begin

			black_tile := (Row * Column) div 2 ;
			white_tile := (Row * Column) - black_tile;
		end;



		

	writeln('Here is the number of black tiles — ', black_tile, '	And the number of white tiles - ', white_tile);
	readln();





end.

