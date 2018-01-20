/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_escape)){
	if(!paused){
		instance_deactivate_all(true);
		paused = true;
	}else{
		instance_activate_all();
		paused = false;
	}
}