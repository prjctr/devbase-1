program cw_25_08;

var
	a: array[1..10] of Integer = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
	search: Integer; // искомое
	index: Integer; 
	low, high, mid: Integer;

begin
	writeln('Enter the searching number');
	readln(search);

	low := 1;
	high := length(a);

	index := -1;

	while low <= high do	
	begin
		mid := (low + high) div 2;

		if a[mid] = search then
		begin
			//writeln('found at index ', mid);
			index := mid;
			break;
		end;
		
		if a[mid] > search then	
		begin
			high := mid - 1;
		end
		else 
		begin
			low := mid + 1;
		end;
	end;	

	if index = -1 then
	begin
		writeln('not found');
	end
	else
	begin
		writeln('found at index ', index);
	end;
	readln();
end.		
