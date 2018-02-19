
if(wake_up && instance_exists(obj_sleeping)) scr_wake_and_walk();



if(keyboard_check_pressed(vk_space) && !disable_space){
	if(!instance_exists(obj_fader)){
		instance_create_depth(0,0,-500,obj_fader)
		obj_fader.target = rm_beta;
	}
	
	//Disabled for BETA_MODE
	//scr_restart();
	//room_goto(dream);
}

if(keyboard_check_pressed(vk_escape) && !disable_space){
	
	if(!instance_exists(obj_fader)){
		instance_create_depth(0,0,-500,obj_fader)
		obj_fader.target = rm_title;
	}

}


