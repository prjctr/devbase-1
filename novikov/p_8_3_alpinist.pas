program Alpine;
uses crt;


var
	Hours: Integer;
	CurHeight: Integer;
	health: Integer;
	name: String;
	Action_id: Integer;	
	FoodPacks: Integer;


procedure Init();
begin
	Hours := 0;
	CurHeight := 0;
	health := 100;
	Randomize;
	
end;


procedure Bear();
	var
		Choice_Bear: Integer;
begin
	writeln('You meet a bear');
	writeln('Press 1 if you want to run away or 2 if you want to fight him');
	readln(Choice_Bear);
	case Choice_Bear of

		1:
		begin
			writeln('You are trying to ran away');
			CurHeight := CurHeight + 50;
			Hours := Hours + 1;
			health := health - 10;
		end;

		2:
		begin
			writeln('You are trying to hide');
			writeln('The bear has not eaten you');
		end;

		3:
		begin
			writeln('You are trying to give food to bear');
			writeln('The bear has not eaten you');
		end;

		else 
			writeln('Invalid input');
	end;
end;

procedure Girl();
var
	Action_id: Integer;
begin
	writeln('Press 1 if you want to chat with this girl, press 2 if you do not care');
	readln(Action_id);

	case Action_id of
		1:
		begin
			writeln('You spend a really good time together. Time flies quickly');
			health:= health + 10;
			Hours:= Hours + 2;

			end;

		2:
		begin
			writeln('You continue your journey. You regret your decision a bit');
			health:= health - 10;

		end;
		else 
			writeln('Okay');
	end;

end;



procedure RandomEvent();
var
	Event_id: Integer;

begin

	Event_id:= Random(6);

		case Event_id of
			
			0: 
			begin
			writeln('Everything is ok, you have made a progress today. ');
			writeln('You made 200 metres leap in 1 hour ');
			CurHeight := CurHeight + 200;
			Hours := Hours + 1;
				
			end;

			1: 
			begin
			writeln('You made a moderate progress today, it was really freezing');
			writeln('You made 100 metres leap in 1 hour ');
			CurHeight := CurHeight + 100;
		    Hours := Hours + 1;
			health := health - 10;

			end;

			2: 
			begin
			writeln('The bear attacked you');
			writeln('You survived');
			Bear();
			
			end;

			3: 
			begin
			writeln('The bear attacked you');
			writeln('You have not survived');

			health := health - 100;
			end;

			4: 
			begin
			writeln('You have made a great progress');
			writeln('You went for 300 metres');

			CurHeight := CurHeight + 300;
			Hours := Hours + 1;
			end;

			5: 
			begin
			writeln('You meet a nice girl');

			Girl();

			end;
	end;
end;


procedure TreeDraw(level:Integer);
	var
		i: Integer;
		j: Integer;
begin
for i := 1 to level do
	begin

		for j := 1 to level - i do
	 	begin
	 		write(' ');
	 	end;
	 	for j := 1 to 2*i -1 do
	 	begin
	 		write('||');
	 	end;
	 	writeln(); 
	end;
end;

procedure Startscreen();
	var
	i: Integer;
begin

	writeln('            Hello, great journey lies ahead');
	TreeDraw(8);

	for i := 0 to 9 do
	begin
		write('--')
	end;




	writeln('Press any key to continue');
	readln();

	writeln('Please input your name');
	readln(name);
end;

procedure Action_choose();
begin
	writeln('Now you can choose a few actions');
		writeln('Press 1 if you want to take a nap - health +20, time + 1');
		writeln('Press 2 if you want to make an extra effot - health -20, time + 1, progress + 100m ');
		writeln('Press 3 if you want to do nothing');
		
		readln(Action_id);

        case Action_id of
			1: 
			begin
		        health:= health + 20;
		        Hours:= Hours + 1;
			end;

			2: 
			begin
			    health := health - 20;
		        Hours := Hours + 1;
			    CurHeight := CurHeight + 100;
			end;
			
			3: 
			begin
				writeln('Nice choice!');
			end;
		end;


end;




begin
	writeln('debug line');
	Init();
	Startscreen();
	writeln('You are currently at the start of your trip.');


	while (Hours < 12) and (CurHeight < 800) and (health > 0) do
	begin
        
        RandomEvent();
		
		writeln('You now have' ,(800 - CurHeight), 'metres to go, your health is ', health, ' and time is ', Hours, ' hours');

		Action_choose();
		
			
	end;


	
    if (CurHeight >= 800) then
    begin
		writeln('You have won');
		writeln('\    /\    /  _______    \\\    //');
		writeln(' \  /  \  /  |       |  \\\\\  //');
		writeln('  \/    \/   |_______| \\\  >// '   );
	end
	else
	begin
		writeln('You have lost');
		writeln();
		writeln(' O');
		writeln('/X\');
		writeln('||');
	end;
	readln();
end.



