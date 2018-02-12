//Stop the rain
with(obj_drop) stopper = 0;

//Timer stop
obj_game_logic.alarm[4] = 0;

//Stop the cans n shit
obj_game_logic.alarm[1] = 0;

//Kirstyn shhhhhh
obj_kirsten_front.image_speed = 0;
obj_kirsten_front.image_index = 0;

//Stop miller
obj_default.active = false;
if(freeze_counter == 0) obj_default.sprite_index = spr_default_standing;

//Disable blinking
with(obj_dynamic_beard){

	blinking = false;
	alarm[0] = 0;

}

//No more pause
with(obj_game_logic) dying = true;

//Destroy Damien
if(freeze_counter == 2 * room_speed){

	instance_destroy(obj_dynamic_beard);
	obj_default.sprite_index = spr_dying;
	obj_default.image_xscale = 1;
	
	obj_default.image_speed = 1;
	obj_default.image_index = 0;

}

//Play animation once
if(obj_default.image_index == 3){
	
	obj_default.y += GRID_SIZE;
	obj_default.sprite_index = spr_default_sleeping;
	

}



if(obj_default.sprite_index == spr_default_sleeping){

	if(global.timer > .2){
		if(!audio_is_playing(snd_typing))audio_play_sound(snd_typing, 0, false);
		global.scr++;
		global.timer -= .2;
	}
	
	if(global.timer == .2){
		global.scr++;
		global.timer = 0;
	}


}

if(global.timer == 0){
	
	for(i = 0; i < array_length_1d(global.bottle_number); i++){
	
		instance_destroy(global.bottle_number[i]);
	
	}
	
	obj_drop.x = -1000;
	obj_drop.y = -1000;
	
	global.fade_to_black = true;


}

if(obj_game_logic.fade_out_variance == 1) {
	global.fade_to_black = false;
	room_goto(game_over);
}




//if(audio_is_playing(snd_title) && turn_off_title_song){

//	turn_off_title_song = false;
//	audio_sound_gain(snd_title, 0, 2000);
	
//}


//if(freeze_counter > 2 * room_speed){
//	if(global.timer > 0){
//		if(!audio_is_playing(snd_typing))audio_play_sound(snd_typing, 0, false);
//		global.scr++;
//		global.timer -= .2;
//	}else{
//		audio_stop_sound(snd_typing);
//	}
//}


//if(global.timer == 0 && !audio_is_playing(snd_dead)) audio_play_sound(snd_dead, 0, false);

//if(freeze_counter > 2 * room_speed) obj_default.y -= 1;
//if(freeze_counter > 4 * room_speed) room_goto(game_over);

//if(alarm[4])alarm[4] = 0;
//if(alarm[0])alarm[0] = 0;
//if(alarm[1])alarm[1] = 0;
//if(global.invulnerable) global.invulnerable = false;
freeze_counter++;
