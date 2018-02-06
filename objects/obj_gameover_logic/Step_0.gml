obj_sleeping.x = global.current_player_loc_x;
obj_zzz.x = global.current_player_loc_x + GRID_SIZE/2;


if(keyboard_check_pressed(vk_space) && !disable_space){
		room_goto(rm_beta);
	
	//Disabled for BETA_MODE
	//scr_restart();
	//room_goto(dream);
}

if(keyboard_check_pressed(vk_escape) && !disable_space){
	

	scr_restart();
	room_goto(rm_title);

}
