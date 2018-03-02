
if(wake_up && instance_exists(obj_sleeping)) scr_wake_and_walk();



if(keyboard_check_pressed(vk_space) && !disable_space){
	
	scr_music_stop();
	scr_fader(dream, c_white);
}

if(keyboard_check_pressed(vk_escape) && !disable_space){
	scr_music_stop();
	scr_fader(rm_title);
}