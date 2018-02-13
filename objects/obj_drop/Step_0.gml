//Check for drop collision with player

//If drop hits player
if(place_meeting(x,y,obj_default) && !drop_contact){
	//If the umbrella is away when this happens.
	if(!global.umbrella_out && !ground_contact){		
		if(!global.invulnerable){
			global.player_lives -= global.player_damage;
			audio_play_sound(global.rain_hit[random(array_length_1d(global.rain_hit) - 1)], 0, false);
			global.cuntTally++;
		}
		global.invulnerable = true;
		with (obj_default){
			if(!alarm[0]){
				alarm[0] = invulnerable_time * room_speed;
			}
		}

		instance_destroy();
	}
	
	
	
	//If umbrella is out
	if(global.umbrella_out){
		
		if(this_colour == c_black){
			if(global.is_thor){
				audio_play_sound(snd_thunder, 0, false);
				is_thunder = true;
			}else{
			
				audio_play_sound(snd_black_drop_caught, 0, false);
			
			}
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


if (y > (GRID_SIZE * 24) - sprite_get_height(spr_floor) && !drop_contact && !ground_contact){

	sprite_index = spr_splash;
	if(this_colour == c_black) image_blend = c_black;
	image_index = 0;
	image_speed = 1;
	y = 22 * GRID_SIZE;
	ground_contact = true;
		
}
	
	

if(ground_contact){
	

	if(image_index == 3) instance_destroy();

}

if(drop_contact){
	y -= 1;
}else if(!ground_contact){
	y += (global.drop_base_speed + this_speed) * stopper;
}