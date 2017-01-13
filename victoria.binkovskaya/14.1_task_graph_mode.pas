program graph22;
uses crt, graph;

var 
	gb, gm, i , j, x, y, sum: Integer; // x, y, r, dx, dy 


begin
	x := 0;
	y := 0;
	// r := 20;
	// dx := 10;
	// dy := 10;
	sum := 0;
	i := 0;
	j := 0;

	gb := detect;
	InitGraph(gb, gm, '');

	for i := 1 to 8 do
	begin
		y := y + 10;
		x := 0;
		for j := 1 to 8 do
		begin
			sum := i + j;
			x := x + 10;
			if (sum mod 2 = 0) then
			begin
				Setfillstyle(1, 3);
			end
			else
			begin
				Setfillstyle(2, 4);
			end;
			Bar(x, y, x + 10, y + 10);
		end;
	end;	
	
	//____________________________________________
	// Setcolor(3);

	// repeat
	// 	Setfillstyle(1, 3);

	// 	Bar(0, 0, GetMaxX, GetMaxY);
	// 	x := x + dx;
	// 	y := y + dy;

	// 	Setfillstyle(2, 4);
	// 	FillEllipse(y, y, r, r);

	// 	delay(4000);

	// until keypressed;

	//____________________________________________

	// line(0, 0, 100, 100); // две координаты
	// circle(100, 100, 100); // центр и 2 радиуса

	// lineto(100, 100);
	// lineto(200, 100);
	// linerel(100, 100);

	// Setfillstyle(2, 3);
	// FillEllipse(100, 100, 30, 100);

	// circle(100, 100, 100);


	// SetBkColor(blue);
	// delay(10000);

	readln;
	closegraph;
	// delay(10000);
	// readln;
	readkey;
end.