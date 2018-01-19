/// @description Insert description here
// You can write your code in this editor

y_location = random(50) * -1;
x_location = random(window_get_width());

falling_drops = [];

//Debug invincibility
if(global.debugging){
	global.scr = 100;
	global.player_lives = 3;
	if(keyboard_check_pressed(vk_escape)){
		game_restart();
	}
}


if (!alarm_on){
	alarm[0] = drop_speed;
	alarm_on = true;
}




//Update max score

if (global.scr > global.max_score){
	global.max_score = global.scr;
}

//If score too low, game over
if (global.scr < 0){
	room_goto(game_over);
}


if(!alarm[1]){
	alarm[1] = room_speed * (10 + random(5));
}

//If run out of lives, game over
if (global.player_lives <= 0){
	room_goto(game_over);
}

//Check to see if beard is unlocked.
for(var i = 0; i < array_length_1d(global.all_unlocks_available); i++){
	if(global.scr >= global.all_unlocks_available[i] && global.all_unlocks_available[i] != 0){
		scr_unlock_beards(global.all_unlocks_available[i]);
		global.all_unlocks_available[i] = 0;
		beard_unlocked = true;
	}
}
