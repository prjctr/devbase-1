program task_11_1;
uses sysutils;

var
	f: TexTFile;
	n: Integer;

begin
	Assign(f, '11.1_task_hello_file.txt');
	// Rewrite(f); // создать новый / перезаписать старый
	Reset(f); // только для чтения
	// Append(f); // дописать в конец
	// write(f, 'Make up your mind! ');
	while not eof(f) do
	begin
		read(f, n);
		write(n, ' ');

		if eoln(f) then
		begin
			writeln();
		end;	
	end;	
	
	// eof(f) // End of file
	// eoln(f) // End of line

	Close(f); // обязательно закрыть файл перед выходом с программы
	readln();
end.		
