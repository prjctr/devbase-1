program SnakeNew;

uses
	sysutils, graph, wincrt;

type
    TPoint = record
        x : integer;
        y : integer;
    end;

const
	N = 50;			{Высота игрового поля Y}    //N должно быть >= M и меньше 70
	M = 50;			{Ширина игрового поля X}
	StartPointX = 15;	{Старт X}
	StartPointY = 15;	{Старт Y}

var
	GameField: array [1..N,1..M] of Char;		{Массив игрового поля}
	SnakeCells: array[1 .. 200] of TPoint;		{Массив змейки}
	i,j,x,y,dx,dy,turnLR, L, time: integer;
	key: Char;
	gm,gd: smallint;
	intersect : Boolean;

procedure StartWindow();						//Начальная страница
begin
	SetColor(15);
	SetTextStyle(0, 0, 4);
	OutTextXY(75,200,'Samurai Snake');
	SetTextStyle(0, 0, 1);
	OutTextXY(170,400,'Press any key to continue');
	readkey();
	clearDevice;

	SetColor(15);
	SetTextStyle(0, 0, 2);
	OutTextXY(200,100,'Rules');
	SetTextStyle(0, 0, 1);
	OutTextXY(150,200,'O - turn left');
	OutTextXY(150,220,'P - turn right');
	setfillstyle(solidfill, 14);						
	bar(150, 240, 160, 250);
	OutTextXY(170,242,'- eat them for growth');
	setfillstyle(solidfill, 13);						
	bar(150, 260, 160, 270);
	OutTextXY(170,265,'-  do not eat them!');
	OutTextXY(150,285,'Do not cross the border or yourself!');
	OutTextXY(170,400,'Press any key to start');

	readkey();
	clearDevice;
end;


procedure Direction(var dx,dy,turnLR:integer);			//Изменение направления
begin
	if (turnLR mod 4 = 0) or (turnLR = 0) then 				
	begin
		turnLR := 0;		 //Направо
		dx := 1;
		dy := 0;		
	end
	else
	begin
		if (turnLR = 1) or (turnLR = -3) then
		begin
			dx := 0; 		//Вниз
			dy := 1;			
		end
		else
		begin
		if (turnLR mod 2) = 0 then
			begin
				dx := -1; 	//Налево
				dy := 0;			
			end
			else
			begin
				dx := 0;	//Вверх
				dy := -1;			
			end;		
		end;		
	end;
end;

procedure Soldier();						//Рандомно помещаются на поле съедобные квадраты
var 
	mx,my,i,sum: integer;

begin
	sum := random(5) + 1;
	for i := 1 to sum do
	begin
		mx := random(M) + 1;
		my := random(N) + 1;
		if GameField[mx,my] <> '*' then
			GameField[mx,my] := 'm'
		else
			continue;

	SetColor(14);		
	setfillstyle(solidfill, 14);						
	bar(mx * 10, my * 10, mx * 10 + 5, my * 10 + 5);
		
	end;
end;

procedure General(); 						//Рандомно помещаются на поле несъедобные квадраты
var
	gx,gy: integer;

begin
	gx := random(M) + 1;
	gy := random(N) + 1;
	if GameField[gx,gy] <> '*' then
		GameField[gx,gy] := 'g';
	
	SetColor(13);	
	setfillstyle(solidfill, 13);						
	bar(gx * 10, gy * 10, gx * 10 + 10, gy * 10 + 10);	

end;


procedure GameOver();
var
	j,i,y: Integer;	
begin
	for i := 1 to N do
	begin
		for j := 1 to M do
		begin
			y := random(10) + 1;
			SetColor(12);
			setfillstyle(solidfill, 12);
			bar(j*10,i*10,(j + 1)*10,(i + y)*10);
		end;
	delay(20);
	end;
	SetColor(16);
	SetTextStyle(0, 0, 5);
	OutTextXY(75,200,'Game Over');
	SetTextStyle(0, 0, 2);	
	OutTextXY(120,300,'Snake length:' + inttostr(L));
end;

procedure RemoveSnake(var x,y: integer);		//Смещение массива змейки
begin
for i := L downto 2 do 									
begin
	SnakeCells[i].x := SnakeCells[i-1].x;
	SnakeCells[i].y := SnakeCells[i-1].y;
end;
SnakeCells[1].x := x;							//Присвоение новых координат первого звена в массиве змейки
SnakeCells[1].y := y;		
end;


begin 														//Начало основной программы
	DetectGraph(gd,gm);
	InitGraph(gd,gm,'');

	StartWindow();

	randomize;
	L := 3;			{длина змейки на старте}			//Установка начальных значений
	x := StartPointX;
	y := StartPointY;
	key := 'a';
	turnLR := 0;
	dx := 1;
	dy := 0;
	intersect := false;
	time := 200;

	for i := 1 to N do							{Запись массива игрового поля}
		for j := 1 to M do
			GameField[j,i] := ' ';

	for i := 1 to L do							{Запись массива змейки}				
	begin
		GameField[StartPointX - i, StartPointY ] := '*';
		SnakeCells[i].x := StartPointX - i;
		SnakeCells[i].y := StartPointY;
	end;

	//clearDevice;

	SetColor(12);													//Отрисовка границ поля
	line(9, 9, M*10 + 6, 9);
	line(M*10 + 6, 9, M*10 + 6, N*10 + 6);
	line(M*10 + 6, N*10 + 6, 9, N*10 + 6);
	line(9, N*10 + 6, 9, 9);

	Soldier();
	
	while (x > 0) and (x <= M) and (y > 0) and (y <= N) do 			//Начало игрового процесса
		begin

			SetColor(12);
			setfillstyle(solidfill, 12);							//Красный круг для придания японского колорита
			FillEllipse(100,100,50,50);

			if GameField[x,y] = 'm' then							//Увеличение змейки при съедении солдата + увеличение скорости + новые солдаты
			begin
				L := L + 1;
				GameField[x, y] := '*';

				RemoveSnake(x,y);

				Soldier();

				if (L mod 5 = 0) and (time > 50) then
					time := time - 10;

				if (L mod 5) = 0 then
					General();

					continue;
			end;

			if GameField[x,y] = 'g' then							//Проверка на столкновение с препятствием
				intersect := true;

			for i := 4 to L do 										//Проверка на пересечение
			begin
				if (SnakeCells[1].x = SnakeCells[i].x) and (SnakeCells[1].y = SnakeCells[i].y) then
					intersect := true;
			end;

			if intersect = true then
				break;		
		
			GameField[x , y] := '*';								//Запись нового звена
			GameField[SnakeCells[L].x, SnakeCells[L].y] := ' ';		//Стирание последнего

			setfillstyle(solidfill, 16);							//Стирание на экране
			bar(SnakeCells[L].x *10,
				SnakeCells[L].y *10,
				SnakeCells[L].x *10 + 5,
				SnakeCells[L].y *10 + 5);

			RemoveSnake(x,y);
			
			setfillstyle(solidfill, 15);							//Рисование первого звена
			bar(SnakeCells[1].x *10,
				SnakeCells[1].y *10,
				SnakeCells[1].x *10 + 5,
				SnakeCells[1].y *10 + 5);

			
			x := x + dx;
			y := y + dy;

			delay(time);

			if keypressed then 										//Проверка на изменение направления	
			begin
			key := readkey;
				case key of
				'o': turnLR := turnLR - 1;
				'p': turnLR := turnLR + 1;
				end;
			end
			else
				continue;

			Direction(dx,dy,turnLR);								//Изменение направления через процедуру

		end;
		GameOver();
		readkey();

		CloseGraph();
end.	