if(!instance_exists(obj_fader)){
	if(toggle_sound_fade){
		toggle_sound_fade = false;
		scr_music_fade(-1);
	}
}
scr_fader(rm_enter_name, c_black, -500, 0.01);
if(image_index == 6) image_speed = 0;