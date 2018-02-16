
//Debug invincibility
if(global.debugging){
	if(keyboard_check_pressed(vk_control)) global.scr += 100;
	if(keyboard_check_pressed(vk_alt)) instance_create_depth(scr_place_pickup("x"), scr_place_pickup("y"), obj_default.depth, obj_hot_sauce);
	if(keyboard_check_pressed(vk_shift)) instance_create_depth(scr_place_pickup("x"), scr_place_pickup("y"), obj_default.depth, obj_rb_can);

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
	
	scr_slow_down_sequence();

}


//Store coords of player.
global.current_player_loc_x = obj_default.x;


previous_time_multiplier = global.time_multiplier;



//Cycle through grid and check to see if current score equals anything. If so, unlock it and save it to the ini.
for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){	
	
	if(ds_grid_get(global.all_beard_properties, i, BRD_SCORE_TO_UNLOCK) <= global.scr &&
	   !ds_grid_get(global.all_beard_properties, i, BRD_UNLOCKED)){
		
		ds_grid_set(global.all_beard_properties, i, BRD_UNLOCKED, true);
		beard_unlocked = true;

	}
}

if(keyboard_check_pressed(vk_escape) && !dying && !global.tutorial_on){
	instance_create_depth(x, y, 0, obj_pause_handler);
}

if(global.fade_to_black && fade_out_variance < 1) fade_out_variance += .01;

