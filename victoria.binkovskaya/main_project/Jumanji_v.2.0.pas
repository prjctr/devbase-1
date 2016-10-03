program project_jumanji;

uses
    wingraph, wincrt;

const
	// значение - номера цветов
    BG_COLOR = $50AF4C; 
    MAIN_FIELD_COLOR = $4AC38B; 
    GAME_FIELDS_COLOR = $7A40EC; 
    GAME_LINES_COLOR = $889600;
    CENTRAL_ELLIPSE_COLOR = $4370FF;  	
    TEXT_COLOR = $FFFFFF; 
    FIRST_CHIP_COLOR = $4DB7FF;
    SECOND_CHIP_COLOR = $DAC626;

    // значение - ширина рамок в пикселях
    MAIN_FIELD = 30;

    // размер шрифта
    FONT_SIZE = 22;

    //количество строк в текстовом поле
    QUANTITY_OF_STRINGS = 5;

    // значение - количество ячеек игрового поля
    NUMBER_OF_LOCATIONS = 2;	

type
	TLocation = record
		x, y: Integer;
		nextLocation1: Integer;
		nextLocation2: Integer;

		eventStr: array [1..QUANTITY_OF_STRINGS] of String;
		eventLocation: Integer;
		loseTurn: Boolean;
	end;

var
	gm, gd: SmallInt;

	Locations: array [1..NUMBER_OF_LOCATIONS] of TLocation;

// фон
procedure BGround();
	var
		Color: Longword;

	begin
		Color := BG_COLOR;

		SetColor(Color);
		SetFillStyle(solidfill, Color);
		Bar(0, 0, GetMaxX, GetMaxY);
	end;

// основное игровое поле
procedure MField();
	var
		Color: Longword;

	begin
		Color := MAIN_FIELD_COLOR;

		SetColor(Color);
		SetFillStyle(solidfill, Color);
		Bar(0 + MAIN_FIELD, 0 + MAIN_FIELD, GetMaxX - MAIN_FIELD, GetMaxY - MAIN_FIELD);
	end;

// поле для вывода кубиков (прямоугольник в нижнем правом углу) 
procedure DiceField();
	var
		Color: Longword;

	begin
		Color := BG_COLOR;

		SetColor(Color);
		SetFillStyle(solidfill, Color);
		Bar((GetMaxX - (GetMaxX div 6)), (GetMaxY - (GetMaxY div 6)), GetMaxX, GetMaxY);
	end;

//центральный овал (с выводом текста)
procedure CentralEllipse();
	var
		Color: Longword;

	begin
		Color := CENTRAL_ELLIPSE_COLOR;

		SetColor(Color);
		SetFillStyle(solidfill, Color);
		FillEllipse((GetMaxX div 2), (GetMaxY div 2), 150, 120);
	end;	

// текстовое поле 
procedure WriteText(st: array of string);
	var
		i: Integer;

	begin
		for i := 0 to length(st) - 1 do
		begin
			SetColor(TEXT_COLOR);
			OutTextXY(((GetMaxX div 2) - 100), (((GetMaxY div 2) + i * 30) - 75), st[i]);	
		end;	
	end;

// // кубики
// procedure Dice();

// ячейки игрового поля
procedure GameFields();
	var
		Color, LineColor: Longword;
		x1, x2, y1, y2: Integer;
		i: Integer;

		NextLocation: Integer;

	begin
		Color := GAME_FIELDS_COLOR;
		SetColor(Color);
		SetFillStyle(solidfill, Color);

		LineColor := GAME_LINES_COLOR;
		SetColor(LineColor);
		SetLineStyle(solidln, 0, 3);

		for i := 1 to NUMBER_OF_LOCATIONS do
		begin
			x1 := Locations[i].x + 15;
			y1 := Locations[i].y + 15;

			NextLocation := Locations[i].NextLocation1;
			if ( NextLocation <> 0) then
			begin
				x2 := Locations[NextLocation].x + 15;
				y2 := Locations[NextLocation].y + 15;
				line(x1, y1, x2, y2);
			end;

			NextLocation := Locations[i].NextLocation2;
			if ( NextLocation <> 0) then
			begin
				x2 := Locations[NextLocation].x + 15;
				y2 := Locations[NextLocation].y + 15;
				line(x1, y1, x2, y2);
			end;			
		end;

		for i := 1 to NUMBER_OF_LOCATIONS do
		begin
			x1 := Locations[i].x;
			y1 := Locations[i].y;
			x2 := Locations[i].x + 30;
			y2 := Locations[i].y + 30;
			Bar(x1, y1, x2, y2);
		end;
	end;	

// передвижение фишек
// procedure ClearChips();
// 	var
// 		Color: Longword;

// 	begin
// 		Color := GAME_FIELDS_COLOR;
// 		SetColor(Color);
// 		SetFillStyle(solidfill, Color);
// 		FillEllipse(65, 675, 10, 10);
// 		delay(40);
// 	end;		

// фишки
procedure Chips();
	var
		Color: Longword;

	begin
		Color := FIRST_CHIP_COLOR;
		SetColor(Color);
		SetFillStyle(solidfill, Color);
		FillEllipse(65, 675, 10, 10);

		delay(500);

		SetColor(GAME_FIELDS_COLOR);
		SetFillStyle(solidfill, GAME_FIELDS_COLOR);
		FillEllipse(65, 675, 10, 10);

		delay(500);

		SetColor(Color);
		SetFillStyle(solidfill, Color);
		FillEllipse(135, 565, 10, 10);

		// Color := SECOND_CHIP_COLOR;
		// SetColor(Color);
		// SetFillStyle(solidfill, Color);
		// FillEllipse(95, 675, 10, 10);

		// ClearChips();
	end;	

// изменение стандартного шрифта и его размера
procedure ChangeFont;
	var 
		font: Smallint;

	begin
	  	font := InstallUserFont('Verdana');
	  	if (font < 0) then 
	  	Exit;
	  	SetTextStyle(font, HorizDir, FONT_SIZE); 
	end;	

// начало основной программы
begin

	// инициализация графического режима
	gd := NoPalette;
    gm := mMaximized;
    InitGraph(gd,gm, '');	

    // SetActivePage(0);
    
    // описание игровых ячеек
    Locations[1].x := 50;
	Locations[1].y := 660;
	Locations[1].nextLocation1 := 2;
	Locations[1].nextLocation2 := 0;
	Locations[1].eventStr[1] := 'Line1';
	Locations[1].eventStr[2] := 'Line2';
	Locations[1].eventStr[3] := 'Line3';
	Locations[1].eventStr[4] := 'Line4';
	Locations[1].eventStr[5] := 'Line5';

	Locations[2].x := 120;
	Locations[2].y := 550;
	// Locations[2].nextLocation1 := 3;
	// Locations[2].nextLocation2 := 4;

	// Locations[3].x := 170;
	// Locations[3].y := 560;

	// Locations[4].x := 170;
	// Locations[4].y := 600;
	// Locations[4].nextLocation1 := 1;
	// Locations[4].nextLocation2 := 0;	

	// основной фон
	BGround();

	// внутренний фон
	MField();

	// поле для игральных кубиков
	DiceField();

	// центральный рисунок игрового поля - подложка для текста
	CentralEllipse();

	// ячейки игрового поля
	GameFields();

	ChangeFont();
	WriteText(Locations[1].eventStr);

	// фишки
	Chips();

	// SetVisualPage(1);
	// спросить у пользов, что он хочет делать
	// обработка запроса пользователя
	// заново нарисовать

	// конец основной программы
	readkey();
	closeGraph();
end.