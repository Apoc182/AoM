/// @description Insert description here
// You can write your code in this editor


//Hit


//Check for drop collision with player



if(place_meeting(x,y,obj_default) && !drop_contact){
	//If the umbrella is away when this happens.
	if(!global.umbrella_out){
		this_text = scr_score_display(global.white_drop_head);
		audio_play_sound(global.rain_hit[random(array_length_1d(global.rain_hit) - 1)], 0, false);
	}
	
	//If umbrella is out
	if(global.umbrella_out){
		if(this_colour == c_black){
			this_text = scr_score_display(global.black_drop_umbrella);	
		}else{
			this_text = scr_score_display(global.white_drop_umbrella);
		}
		
	//If umbrella is away
	}else{
		
		//Added for the lives
		global.player_lives -= 1;
		if(this_colour == c_white){
			this_text = scr_score_display(global.white_drop_head);
		}else{
			this_text = scr_score_display(global.black_drop_head);
		}
	
	}
	
	alarm[0] = 2 * room_speed;
	
	drop_contact = true;
	
}

if (y > window_get_height() - sprite_get_height(spr_floor) && !drop_contact){
	

	
	if(this_colour == c_white){
		this_text = scr_score_display(global.white_drop_ground);
	}else{
		audio_play_sound(snd_quick_cunt, 0, false);	
		this_text = scr_score_display(global.black_drop_ground);
	}
	alarm[0] = 2 * room_speed;
	drop_contact = true;
	
	//Just so the number is closer to the floor.
	y -= 20;
}

if(drop_contact){
	y -= 1;
}else{
	y += global.drop_base_speed + this_speed;
}