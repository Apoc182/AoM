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

if(keyboard_check_pressed(ord("M")) && paused){

	scr_restart();
	room_goto(rm_title);

}

if(keyboard_check_pressed(ord("Q")) && paused){

	game_end();

}