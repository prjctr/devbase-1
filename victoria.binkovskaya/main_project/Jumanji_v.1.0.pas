program project;

uses
    wingraph, wincrt;

const
	// значение - номера цветов
    BG_COLOR = 233;    
    MAIN_FIELD_COLOR = 138;
    GAME_FIELDS_COLOR = 42;
    CHIPS_COLOR = 35;

    // значение - ширина отступа в пикселях
    MAIN_FIELD = 35;

var
	gm, gd: smallInt;

// фон
procedure BGround();
	var
		BkColor: Integer;

	begin
		BkColor := BG_COLOR;
		SetColor(BkColor);
		SetFillStyle(solidfill, BkColor);
		Bar(0, 0, GetMaxX, GetMaxY);
	end;

// основное поле
procedure MField();
	var
		BkColor: Integer;

	begin
		BkColor := MAIN_FIELD_COLOR;
		SetColor(BkColor);
		SetFillStyle(solidfill, BkColor);
		Bar(0 + MAIN_FIELD, 0 + MAIN_FIELD, GetMaxX - MAIN_FIELD, GetMaxY - MAIN_FIELD);
	end;

// разделитель между полями
procedure DelField();
	var
		BkColor: Integer;

	begin
		BkColor := BG_COLOR;
		SetColor(BkColor);
		SetFillStyle(solidfill, BkColor);
		Bar((GetMaxX - (GetMaxX div 3)), 0, ((GetMaxX - (GetMaxX div 3)) + MAIN_FIELD), GetMaxY);
	end;

procedure DelField2();
	var
		BkColor: Integer;

	begin
		BkColor := BG_COLOR;
		SetColor(BkColor);
		SetFillStyle(solidfill, BkColor);
		Bar((GetMaxX - (GetMaxX div 3)), (GetMaxY - (GetMaxY div 3)), GetMaxX, ((GetMaxY - (GetMaxY div 3)) + MAIN_FIELD));
	end;	

// // текстовое поле 
// procedure TextField(str: String);

// // кубики
// procedure Dice();

// ячейки игрового поля
procedure GameFields();
	var
		BkColor: Integer;

	begin
		BkColor := GAME_FIELDS_COLOR;
		SetColor(BkColor);
		SetFillStyle(solidfill, BkColor);
		Bar(50, 660, 80, 690);
	end;	


// фишки
procedure Chips();
	var
		BkColor: Integer;

	begin
		BkColor := CHIPS_COLOR;
		SetColor(BkColor);
		SetFillStyle(solidfill, BkColor);
		FillEllipse(65, 675, 10, 10);
	end;	

procedure ChangeFont;
var font:smallint;
begin
  font := InstallUserFont('Verdana');
  if (font < 0) then 
  Exit;
  SetTextStyle(font, HorizDir, 28); 
end;	

begin

	// инициализация графического режима
	gd := SVGA;
    gm := mMaximized;
    InitGraph(gd,gm, '');	

	// начало основной программы
	// основной фон
	BGround();

	// внутренний фон
	MField();

	// перегородка поля вертикальная
	DelField();

	// перегородка поля горизонтальная
	DelField2();

	// ячейки игрового поля
	GameFields();

	// фишки
	Chips();

	SetColor(45);
	ChangeFont();
	OutTextXY(960, 50, 'The first player is going');

	// конец основной программы
	readkey();
	closeGraph();
end.