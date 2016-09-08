program task_14_2;

const
	N = 10;
	// N = 10; CONSTANTS = CAPS
	NOT_FOUND = -1;
type
	arr = array[1..N] of Integer;
var
	a: arr = (1, 3, 5, 7, 9, 11, 13, 15, 17, 19);		

function bsearch(a: arr; val, low, high: Integer): Integer;

var
	mid: Integer;

begin
	if high < low then
	begin
		bsearch := NOT_FOUND;
		exit;
	end;

	mid := (low + high) div 2;

	if a[mid] > val then
	begin 
		bsearch := bsearch(a, val, low, mid - 1);
	end
	else 
		if a[mid] < val then
		begin	
			bsearch := bsearch(a, val,  mid + 1, high);
		end
		else
		begin
			bsearch := mid;
		end;
end;

begin
	writeln(bsearch(a, 7, 1, N));
	readln();
end.	
