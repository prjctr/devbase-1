program The_Game;

uses crt, math, sysutils;

const
	Base = 4;

type
	Att = Record
	choice : Integer;
	crit: Boolean;
	end;


var

	Monster_att: Att;
	Player_att: Att;
	hitpoints_Player: Integer;
	hitpoints_Monster: Integer;

	crit_Player : Integer;
	crit_Monster: Integer;

	def_Player: Integer;
	def_Monster: Integer;

	Player_msg_first : String;
	Monster_msg_first : String;

	crit_Player_msg : String;
	crit_Monster_msg : String;

	msg_Player : String;
	msg_Monster : String;



	Player_att_mul: Integer;
	Monster_att_mul: Integer;

	Player_att_value: Integer;
	Monster_att_value: Integer;





procedure Init();
begin
	hitpoints_Player:= 250;
	hitpoints_Monster:= 200;
end;

procedure NewTurn();
begin
	writeln('New turn!');
	crit_Player := 1;
	crit_Monster := 1;
	def_Monster := 1;
	def_Player := 1;

	Player_msg_first:= '';
	Monster_msg_first:= '';

	
end;

procedure AttackTypePlayer();
	

begin
	Player_att.crit := False;
	Player_att.choice := random(3);

	case random(10) of
		
			8,9: 
			begin 
				Player_att.crit := True;
				crit_Player_msg := ' critically ';
				crit_Player:= 2;
			end;

		
		
		else 
			Player_att.crit := False;
	end;

	case Player_att.choice of

		0: 
		begin
		Player_att_mul := 1;
			case random(2) of
				1: def_Player:= 0;
				else 
					def_Player:= 1;
			end;
		Player_msg_first:= 'Player chose defensive stance';
			
		end;

		1: 
		begin
		Player_att_mul := 2;

		Player_msg_first:= 'Player attacked';
			
		end;

		2: 
		begin
			if random(2) = 1 then 
			begin
				Player_att_mul := 2;

			end
			else 
			begin
			Player_att_mul := 0;
			end;
		Player_msg_first:= 'Player ferouciously attacked';

		end;


		
	end;

	
end;

procedure AttackTypeMonster();
	
begin
	Monster_att.crit := False;
	Monster_att.choice := random(3);

	case random(10) of
		8,9: 
		begin
		Monster_att.crit := True;
		crit_Monster_msg := ' critically ';
			
		end;
		
		else 
			Monster_att.crit := False;
	end;

		case Monster_att.choice of

		0: 
		begin
		Monster_att_mul := 1;
			case random(2) of
				1: def_Monster:= 0;
				else 
					def_Monster:= 1;
			end;
		Monster_msg_first:= 'Monster chose defensive stance';
			
		end;

		1: 
		begin
		Monster_att_mul := 2;

		Monster_msg_first:= 'Monster attacked';
			
		end;

		2: 
		begin
			if random(2) = 1 then 
			begin
				Monster_att_mul := 2;

			end
			else 
			begin
			Monster_att_mul := 0;
			end;
		Monster_msg_first:= 'Monster ferouciously attacked';

		end;


		
	end;

	
end;

procedure Monster_result();
begin
	if Player_att.choice = 3 then def_Monster:= 1;

	Player_att_value:= ((base + random(15)) * crit_Player * def_Monster * Player_Att_mul);
	hitpoints_Monster:= hitpoints_Monster - Player_att_value;

	If Player_att_value = 0 then
		begin
		msg_Monster:= 'Monster has succesfully parred the strike';
		
		end
		else
			begin
				msg_Monster:= 'Monster was' + crit_Player_msg + 'hit for ' + IntToStr(Player_att_value) ;
			
			end;

	


	
end;

procedure Player_result();
begin
	if Monster_att.choice = 3 then def_Player:= 1;

	Monster_att_value:= ((base + random(15)) * crit_Monster * def_Player * Monster_Att_mul);
	hitpoints_Player:= hitpoints_Player - Monster_att_value;

	If Monster_att_value = 0 then
		begin
		msg_Player:= 'Player has succesfully parred the strike';
		
		end
		else
			begin
				msg_Player:= 'Player was' + crit_Player_msg + 'hit for '+ IntToStr(Monster_att_value) ;
			
			end;


	
end;

procedure Status();
begin
	writeln();
	writeln(Player_msg_first);
	writeln(Monster_msg_first);
	delay(300);
	writeln(msg_Player);
	writeln(msg_Monster);
	writeln();
	delay(300);

	writeln('Player has ', hitpoints_Player, ' hitpoints');
	writeln('Monster has ', hitpoints_Monster, ' hitpoints');
end;

procedure Turn();
begin
	NewTurn();
	AttackTypeMonster();
	AttackTypePlayer();

	Monster_result();
	Player_result();

	Status();
	readkey();
	
end;



procedure Battle();
begin
	while (hitpoints_Monster > 0) and (hitpoints_Player > 0) do
	begin
		Turn();
	end;

	if hitpoints_Player > 0 then
	begin
		writeln('You have won');
	end
	else
	begin
		writeln('You have lost')
	end;
	

	
end;

procedure Main();
begin
	Init();
	Battle();
	
	
end;

begin
	Main();
end.
