
if(wake_up && instance_exists(obj_sleeping)) scr_wake_and_walk();



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


