beard_unlocked = false;
alarm_on = false;
drop_speed = .5 * room_speed; // Less is more. This is the length of time the alarm is set for.
global.scr = 0;
spd = 4;
array_count = 0;
timer = 0;
alarm[4] = room_speed;

global.time_multiplier = 0;


//The amount of time between speed increases
speed_jump = room_speed * 15;


//Start the alarm
alarm[3] = speed_jump;

//Constants
global.white_drop_ground = 5;
global.white_drop_head = -150;
global.white_drop_umbrella = -50;
global.black_drop_ground = -5;
global.black_drop_head = -500;
global.black_drop_umbrella = 100;
global.rb_can_pickup = 100;
//Ignorance levels
global.rb_can_ignorance_points = 4;
global.drop_on_umbrella_ignorance_points = 4;

//Points to unlock beards
global.unlock_black_beard = 1000;
global.unlock_chops = 500;
global.unlock_abe = 250;
global.unlock_chaplin = 20;
global.unlock_chops_2 = 50;
global.unlock_blonde = 110;
global.unlock_grey = 1020;
global.unlock_white = 1550;
global.unlock_van_dyke = 1121;

array_counter = 0;

global.all_unlocks_available = [];

//This perhaps seems clumsy, but i was stumped and it will work. Just builds an array of beards yet to be unlocked.
ini_open("Save.ini");

	
	if(!ini_read_real("Save", "spr_beard_black", 0)){
		global.all_unlocks_available[array_counter] = global.unlock_black_beard;
		array_counter++;
	}
		
	if(!ini_read_real("Save", "spr_beard_chops", 0)){
		global.all_unlocks_available[array_counter] = global.unlock_chops;
		array_counter++;	
	}
		
	if(!ini_read_real("Save", "spr_abe", 0)){
		global.all_unlocks_available[array_counter] = global.unlock_abe;
		array_counter++;
	}
	if(!ini_read_real("Save", "spr_chaplin", 0)){
		global.all_unlocks_available[array_counter] = global.unlock_chaplin;
		array_counter++;
	}
	if(!ini_read_real("Save", "spr_chops_2", 0)){
		global.all_unlocks_available[array_counter] = global.unlock_chops_2;
		array_counter++;
	}	
	if(!ini_read_real("Save", "spr_grey", 0)){
		global.all_unlocks_available[array_counter] = global.unlock_grey;
		array_counter++;
	}
	if(!ini_read_real("Save", "spr_white", 0)){
		global.all_unlocks_available[array_counter] = global.unlock_white;
		array_counter++;
	}	
	if(!ini_read_real("Save", "spr_van_dyke", 0)){
		global.all_unlocks_available[array_counter] = global.unlock_van_dyke;
		array_counter++;
	}	
	if(!ini_read_real("Save", "spr_blonde", 0)){
		global.all_unlocks_available[array_counter] = global.unlock_blonde;
		array_counter++;

	}
	
	ini_close();
	
//Ignorance power level
global.ignorance_level = sprite_get_number(spr_ignorancometre) - 1;

