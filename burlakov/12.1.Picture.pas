program picture;				{Картинка с грибом}
uses graph, crt;
var
  gd,gm,x,y: Integer;

procedure bush;                 {Процедура Куст}
var
	i,dx: Integer;
begin
	SetColor(2);
	dx := -25;
	for i :=1 to 6 do
	begin
		Line(x,y,x-dx,y-30);
		dx := dx +10;
	end;	
end;

begin
	gm := detect;
	initgraph(gd, gm,'');
	SetFillStyle(SolidFill,9);		{Небо}
	Bar(0,0,GetMaxX,300);

	SetFillStyle(SolidFill,10);		{Земля}
	Bar(0,300,GetMaxX,GetMaxY);

	SetColor(14);					{Солнце}
	SetFillStyle(SolidFill,14);   
	FillEllipse(100,100,50,50);

	SetColor(1);					{Озеро}
	SetFillStyle(SolidFill,1);
	FillEllipse(1000,600,250,50);

	SetFillStyle(SolidFill,6);		{Ствол}
	Bar(800,320,820,500);

	SetColor(2);					{Крона}
	SetFillStyle(SolidFill,2);
	FillEllipse(790,270,80,80);
	FillEllipse(755,210,80,80);
	FillEllipse(820,190,80,80);
	FillEllipse(780,120,70,70);

	SetColor(4);					{Плоды}
	SetFillStyle(SolidFill,4);
	FillEllipse(800,300,10,10);
	FillEllipse(770,250,10,10);
	FillEllipse(730,200,10,10);
	FillEllipse(780,150,10,10);
	FillEllipse(810,110,10,10);
	FillEllipse(840,210,10,10);

	SetColor(6);					{гриб}
	SetFillStyle(SolidFill,6);
	PieSlice(650,500,0,180,30);
	SetColor(15);
	SetFillStyle(SolidFill,15);
	Bar(640,500,660,530);

	x := 100;						{Кусты}
	y := 600;
	bush;
	x := 300;						
	y := 500;
	bush;
	x := 400;						
	y := 400;
	bush;
	x := 150;						
	y := 400;
	bush;
	x := 600;						
	y := 700;
	bush;
	x := 400;						
	y := 600;
	bush;

    readln();
	CloseGraph();
	readln();
end.