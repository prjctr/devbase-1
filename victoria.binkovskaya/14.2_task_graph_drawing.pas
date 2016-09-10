program task14_2;
uses graph;

var
	GrDr, GrMd: Integer;

begin
    GrDr := detect;
    InitGraph(GrDr, GrMd, '');

    SetFillStyle(SolidFill, lightblue);
	Bar(0, 0, GetMaxX, GetMaxY div 3);

	SetFillStyle(SolidFill, lightgreen);
	Bar(0, GetMaxY div 3, GetMaxX, GetMaxY);

	SetColor(yellow);
	Setfillstyle(1, yellow);
	FillEllipse(170, 80, 50, 50);

	SetColor(cyan);
	Setfillstyle(1, cyan);
	FillEllipse(GetMaxX - 310, GetMaxY - 100, 280, 80);

	SetFillStyle(1, brown);
	Bar(950, 270, 990, 470);

	SetColor(green);
	Setfillstyle(1, green);
	FillEllipse(950, 75, 65, 65);

	SetColor(green);
	Setfillstyle(1, green);
	FillEllipse(900, 150, 65, 65);

	SetColor(green);
	Setfillstyle(1, green);
	FillEllipse(1020, 160, 65, 65);

	SetColor(green);
	Setfillstyle(1, green);
	FillEllipse(950, 230, 65, 65);

	SetColor(red);
	Setfillstyle(1, red);
	FillEllipse(970, 255, 9, 9);

	SetColor(red);
	Setfillstyle(1, red);
	FillEllipse(950, 210, 9, 9);

	SetColor(red);
	Setfillstyle(1, red);
	FillEllipse(980, 165, 9, 9);

	SetColor(red);
	Setfillstyle(1, red);
	FillEllipse(900, 170, 9, 9);

	SetColor(red);
	Setfillstyle(1, red);
	FillEllipse(935, 125, 9, 9);

	SetColor(red);
	Setfillstyle(1, red);
	FillEllipse(980, 70, 9, 9);

	SetFillStyle(1, DarkGray);
	Bar(750, 440, 766, 480);
	
	SetColor(magenta);
	Setfillstyle(1, magenta);
	PieSlice(758, 440, 0, 180, 50);

	SetColor(Green);
	Line(35, 405, 65, 440);

	SetColor(Green);
	Line(63, 380, 65, 440);

	SetColor(Green);
	Line(105, 381, 65, 440);

	SetColor(Green);
	Line(104, 425, 63, 437);

	SetColor(Green);
	Line(155, 505, 185, 540);

	SetColor(Green);
	Line(183, 480, 185, 540);

	SetColor(Green);
	Line(225, 481, 185, 540);

	SetColor(Green);
	Line(224, 525, 183, 537);

	SetColor(Green);
	Line(275, 605, 305, 640);

	SetColor(Green);
	Line(303, 580, 305, 640);

	SetColor(Green);
	Line(345, 581, 305, 640);

	SetColor(Green);
	Line(344, 625, 303, 637);

	SetColor(Green);
	Line(315, 400, 345, 435);

	SetColor(Green);
	Line(343, 375, 345, 435);

	SetColor(Green);
	Line(385, 376, 345, 435);

	SetColor(Green);
	Line(384, 420, 343, 432);

	SetColor(Green);
	Line(425, 510, 455, 545);

	SetColor(Green);
	Line(453, 485, 455, 545);

	SetColor(Green);
	Line(495, 486, 455, 545);

	SetColor(Green);
	Line(496, 530, 453, 542);

	readln;
	CloseGraph;	
end.	
