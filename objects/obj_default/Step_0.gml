if(instance_exists(obj_fader)){ 
	if(active) sprite_index = standing;
	exit;
}

if(!active) exit;

//A simple vaiable to determine which sprite to use for umbrella
moving = false;


scr_movement();