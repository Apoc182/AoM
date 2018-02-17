if (instance_place(x, y, obj_default)){
	
	//Here we change the pitch of the fill sound based on how much umbrella power we alread have.
	
	audio_play_sound(snd_gulp, 0, false);
	
	if(global.ignorance_level != 16) {
		scr_play_fill(global.ignorance_level);
	}
	

		
	if(global.ignorance_level < (sprite_get_number(spr_ignorancometre) - 1) - global.rb_can_ignorance_points){
		global.ignorance_level += global.rb_can_ignorance_points;
	}else{
		global.ignorance_level = sprite_get_number(spr_ignorancometre) - 1;
	}
	instance_destroy();
}
