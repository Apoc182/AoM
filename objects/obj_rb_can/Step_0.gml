if (instance_place(x, y, obj_default)){
	
	//Here we change the pitch of the fill sound based on how much umbrella power we alread have.
	
	scr_play_fill();
	
	if(global.ignorance_level != 16) {
		audio_play_sound(umbrella_sound, 0, false);
		audio_play_sound(snd_gulp, 0, false)
	}
	
	scr_play_fill(global.ignorance_level);
	
		
	if(global.ignorance_level < (sprite_get_number(spr_ignorancometre) - 1) - global.rb_can_ignorance_points){
		global.ignorance_level += global.rb_can_ignorance_points;
	}else{
		global.ignorance_level = sprite_get_number(spr_ignorancometre) - 1;
	}
	instance_destroy();
}
