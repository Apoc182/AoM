/// @description Insert description here
// You can write your code in this editor

y_location = random(50) * -1;
x_location = random(window_get_width());

falling_drops = [];

//Debug invincibility
if(global.debugging){
	global.scr = 100;
	if(keyboard_check_pressed(vk_escape)){
		game_restart();
	}
}


if (!alarm_on){
	alarm[0] = drop_speed;
	alarm_on = true;
}


//If a rb can picked up, increase drop speed after 5 seconds
if(global.drop_base_speed == 0 && !alarm[2]){
	alarm[2] = room_speed * 5;
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

