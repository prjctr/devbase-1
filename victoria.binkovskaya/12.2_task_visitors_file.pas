program task_11_2;
uses sysutils;

var
	Visitors: array[1..10] of String;
	NeedVisitor: String; 
	i: Integer; // искомое
	f: TexTFile;

begin
	i := 1;

	Assign(f, '11.2_task_visitors_file.txt');
	Reset(f);

	while not eof(f) do
	begin
		readln(f, Visitors[i]);
		i := i + 1;	
	end;
	Close(f);

	// Visitors[1]:='Jackson';		
	// Visitors[2]:='Smith';
	// Visitors[3]:='Hardy';
	// Visitors[4]:='Mickey';
	// Visitors[5]:='Colins';
	// Visitors[6]:='Celentano';
	// Visitors[7]:='Jobs';
	// Visitors[8]:='Handerson';
	// Visitors[9]:='Cillian';
	// Visitors[10]:='Bradshow';

	for i := 1 to 10 do
	begin
	writeln(Visitors[i]);	
	end;
	
	readln(NeedVisitor);

	i := 1;

	while i <= 10 do
	begin
		if Uppercase(Visitors[i]) = Uppercase(NeedVisitor) then
		//if Visitors[i] = NeedVisitor then
		begin
			writeln('found at index', i);
			break;
		end;

	i := i + 1;
	end;

	if	i > 10 then
	begin
		writeln('not found');
	end;

	readln();
end.		
