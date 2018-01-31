/// @description Insert description here
// You can write your code in this editor




//Debug invincibility
if(global.debugging){
	global.scr = 100;
	global.player_lives = 3;
}


if (!alarm_on && !global.tutorial_on){
	alarm[0] = drop_speed;
	alarm_on = true;
}




//Update max score

if (global.scr > global.max_score && !global.tutorial_on){
	global.max_score = global.scr;
}


if(!alarm[1] && !global.tutorial_on){
	switcher = random(1);
	alarm[1] = room_speed * (10 + random(5));
}

//If run out of lives, game over
if (global.player_lives <= 0 && !global.tutorial_on){
	room_goto(game_over);
}


//Store coords of player.
global.current_player_loc_x = obj_default.x;


previous_time_multiplier = global.time_multiplier;

unlocked = undefined;

//Cycle through grid and check to see if current score equals anything
for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){	
	if(ds_grid_get( global.all_beard_properties, i, 2) == global.scr){
		unlocked = ds_grid_get(global.all_beard_properties, i, 0);
		show_debug_message("true")
	}
}

//constantly check the score agains the price of points
if(!is_undefined(unlocked) && ds_list_find_index(global.unlocked_beards, unlocked) == -1 && !global.tutorial_on){
	beard_unlocked = true;
	ds_list_add(global.unlocked_beards, unlocked);
	ini_open("beards.ini")
	to_add = ds_list_write(global.unlocked_beards);
	ini_write_string("GameData", "unlocked_beards", to_add);
	ini_close();
}