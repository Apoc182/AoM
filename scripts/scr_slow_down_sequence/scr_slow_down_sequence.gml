//Timer stop
obj_game_logic.alarm[4] = 0;

//Stop the cans n shit
obj_game_logic.alarm[1] = 0;

//stop drops spawning
obj_game_logic.alarm[0] = 0;

//Kirstyn shhhhhh
obj_kirsten_front.image_speed = 0;
obj_kirsten_front.image_index = 0;

obj_default.active = false;
if(freeze_counter == 0){
	
	//Slowly kill music
	scr_music_fade(-1);
	
	//Stop miller
	obj_default.sprite_index = obj_default.standing;
	
	//Stop the rain
	obj_drop.stopper = .25;
	layer_hspeed(layer_get_id("bg1"),.125);
	layer_hspeed(layer_get_id("bg2"),.25);
	layer_hspeed(layer_get_id("bg3"),.5);
	
}

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
	
	obj_drop.stopper = .5;
	layer_hspeed(layer_get_id("bg1"),0.25);
	layer_hspeed(layer_get_id("bg2"),.5);
	layer_hspeed(layer_get_id("bg3"),1);

}

//Play animation once
if(obj_default.image_index == 8){
	
	obj_default.x -= GRID_SIZE*2;
	obj_default.y += GRID_SIZE;
	obj_default.sprite_index = spr_default_sleeping;	
	obj_default.image_speed = 0;
	original_score = global.timer;
	
	

}



if(obj_default.sprite_index == spr_default_sleeping && !global.tutorial_on){

	if(global.timer > 0){
		if(!audio_is_playing(snd_typing))audio_play_sound(snd_typing, 0, false);
		global.scr += 5;
		global.timer--;
	}
	
}

if(!instance_exists(obj_drop)) && (global.timer == 0 || global.tutorial_on){
	
	if(global.tutorial_on){
		scr_fader(dream, c_white);
	}else{
		scr_fader(game_over, c_black, 25);
		//if(!global.debugging)
		scr_send_statistics();
	}
}


freeze_counter++;