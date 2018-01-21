//Check for drop collision with player

//If drop hits player
if(place_meeting(x,y,obj_default) && !drop_contact){
	//If the umbrella is away when this happens.
	if(!global.umbrella_out){		
		global.player_lives -= 1;
		audio_play_sound(global.rain_hit[random(array_length_1d(global.rain_hit) - 1)], 0, false);
		instance_destroy();
	}
	
	
	//If umbrella is out
	if(global.umbrella_out){
		
		if(this_colour == c_black){
			if(global.is_thor) audio_play_sound(snd_thunder, 0, false);
			this_text = scr_score_display(global.black_drop_umbrella);	
		}else{
			if(global.ignorance_level > 0){
				global.ignorance_level -= global.drop_on_umbrella_ignorance_points;
			}
			instance_destroy();
		}		
	}
	
	//For when the drops change to numbers.
	alarm[0] = 2 * room_speed;
	drop_contact = true;
	
	
}


if (y > window_get_height() - sprite_get_height(spr_floor) && !drop_contact){
	
	instance_destroy();
}

if(drop_contact){
	y -= 1;
}else{
	y += global.drop_base_speed + this_speed;
}