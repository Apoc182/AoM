
//Insert waking up animation here
if(obj_sleeping.sprite_index == spr_default_sleeping){

	obj_sleeping.sprite_index = spr_wakeup;
	obj_sleeping.x += GRID_SIZE*2;
	obj_sleeping.y += GRID_SIZE*1;
	
	//Kill the zzzzzz
	instance_destroy(obj_zzz);
}


if(obj_sleeping.image_index >= 8 && obj_music.dialogue_volume == 1){
	obj_sleeping.sprite_index = spr_talk;
	audio_play_sound(snd_coming, 0, false);
}

if(obj_sleeping.image_index >= 8 && obj_music.dialogue_volume == 0){

	obj_sleeping.sprite_index = spr_beardwalk;

}

if(obj_sleeping.sprite_index == spr_talk && !audio_is_playing(snd_coming)){

	obj_sleeping.sprite_index = spr_beardwalk;

}


if(obj_sleeping.sprite_index == spr_beardwalk){
	obj_sleeping.x += 4;
}

//Destroy the object when complete.
if(obj_sleeping.x > SCREEN_WIDTH + GRID_SIZE){

	instance_destroy(obj_sleeping);
}