//if fading, nothing happens
if(instance_exists(obj_fader)) exit;

//so timer doesn't start unit fading has finished
if (alarm[4] == -1) {
	alarm[4] = room_speed;
	alarm[3] = global.speed_jump;
}

//Debug invincibility
if(global.debugging){
	if(keyboard_check_pressed(vk_control)) global.scr += 100;
	if(keyboard_check_pressed(vk_alt)) instance_create_depth(scr_place_pickup("x"), scr_place_pickup("y"), obj_default.depth, obj_hot_sauce);
	if(keyboard_check_pressed(vk_shift)) instance_create_depth(scr_place_pickup("x"), scr_place_pickup("y"), obj_default.depth, obj_rb_can);
	if(keyboard_check_pressed(vk_tab)) global.colour_array = [c_black];
	if(keyboard_check_pressed(vk_f1)) {
		global.drop_base_speed = 0;
		drop_speed = 3 * room_speed;
	}

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
	alarm[1] = room_speed * (10 + random(5));
}

//If run out of lives, game over
if(global.player_lives <= 0){
	

	//Retrieve high scores.
	http_get("http://gmscoreboard.com/handle_score.php?tagid=5a46f6769a1aa15146000542325&getscore=10");

	scr_slow_down_sequence();

}


//Store coords of player.
global.current_player_loc_x = obj_default.x;


//Cycle through grid and check to see if current score equals anything. If so, unlock it and save it to the ini.
for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){	
	
	if(ds_grid_get(global.all_beard_properties, i, BRD_SCORE_TO_UNLOCK) <= global.scr &&
	   !ds_grid_get(global.all_beard_properties, i, BRD_UNLOCKED)){		
		ds_grid_set(global.all_beard_properties, i, BRD_UNLOCKED, true);
		beard_unlocked = true;

	}
}

if(keyboard_check_pressed(vk_escape) && !dying && !global.tutorial_on){
	instance_create_depth(x, y, -400, obj_pause_handler);
}



if(global.umbrella_out && umbrella_snd){
	audio_stop_sound(snd_umbrella_close);
	var umbrella_open = audio_play_sound(snd_umbrella_open, 0, false);
	audio_sound_pitch(umbrella_open, (random(20) + 90) * .01);
	umbrella_snd = false;
}

if(!global.umbrella_out && !umbrella_snd){
	audio_stop_sound(snd_umbrella_open);
	var umbrella_close = audio_play_sound(snd_umbrella_close, 0, false);
	audio_sound_pitch(umbrella_close, (random(20) + 90) * .01);
	umbrella_snd = true;
}