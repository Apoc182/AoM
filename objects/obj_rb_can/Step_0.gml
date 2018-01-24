if (instance_place(x, y, obj_default) && !picked_up){
	audio_play_sound(snd_gulp, 0, false);
	global.scr += global.rb_can_pickup; 
	picked_up = true;
	if(global.ignorance_level < (sprite_get_number(spr_ignorancometre) - 1) - global.drop_on_umbrella_ignorance_points){
		global.ignorance_level += global.rb_can_ignorance_points;
	}else{
		global.ignorance_level = sprite_get_number(spr_ignorancometre) - 1;
	}
}

if(picked_up){
	alarm[0] = 2 * room_speed;
	rising -= 1;
}

//Particle system





//Particle

//Particle Emitter