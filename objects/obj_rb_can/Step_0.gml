if (instance_place(x, y, obj_default)){
	
	//Here we change the pitch of the fill sound based on how much umbrella power we alread have.
	umbrella_sound = snd_unbrella_fill;
	var pitch_changer = .2;
	switch(global.ignorance_level){
	
		case 0:
			audio_sound_pitch(umbrella_sound, 1);
			break;
		
		case 4:
			audio_sound_pitch(umbrella_sound, 1 + pitch_changer);
			break;
			
		case 8:
			audio_sound_pitch(umbrella_sound, 1 + (pitch_changer * 2));
			break;
			
		case 12:
			audio_sound_pitch(umbrella_sound, 1 + (pitch_changer * 3));
			break;
			
		default:
			audio_sound_pitch(umbrella_sound, 1);
			break;
	}
	if(global.ignorance_level != 16) audio_play_sound(umbrella_sound, 0, false);
		
	if(global.ignorance_level < (sprite_get_number(spr_ignorancometre) - 1) - global.rb_can_ignorance_points){
		global.ignorance_level += global.rb_can_ignorance_points;
	}else{
		global.ignorance_level = sprite_get_number(spr_ignorancometre) - 1;
	}
	instance_destroy();
}
