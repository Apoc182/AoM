if (instance_place(x, y, obj_default)){
	audio_play_sound(snd_gulp, 0, false);

	if(global.ignorance_level < (sprite_get_number(spr_ignorancometre) - 1) - global.drop_on_umbrella_ignorance_points){
		global.ignorance_level += global.rb_can_ignorance_points;
	}else{
		global.ignorance_level = sprite_get_number(spr_ignorancometre) - 1;
	}
	instance_destroy();
}
