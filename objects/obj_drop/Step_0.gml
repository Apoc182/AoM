/// @description Insert description here
// You can write your code in this editor


//Hit


//Check for drop collision with player



if(place_meeting(x,y,obj_default) && !drop_contact){
	//If the umberella is away when this happens.
	if(!global.umberella_out){
		this_text = scr_score_display(global.whiteDropHead);
		audio_play_sound(global.rain_hit[random(array_length_1d(global.rain_hit) - 1)], 0, false);
	}
	
	//If umberella is out
	if(global.umberella_out){
		if(this_colour == c_black){
			this_text = scr_score_display(global.blackDropUmberella);	
		}else{
			this_text = scr_score_display(global.whiteDropUmberella);
		}
		
	//If umberella is away
	}else{
		
		//Added for the lives
		global.player_lives -= 1;
		if(this_colour == c_white){
			this_text = scr_score_display(global.whiteDropHead);
		}else{
			this_text = scr_score_display(global.blackDropHead);
		}
	
	}
	
	alarm[0] = 2 * room_speed;
	
	drop_contact = true;
	
}

if (y > window_get_height() - sprite_get_height(spr_floor) && !drop_contact){
	

	
	if(this_colour == c_white){
		this_text = scr_score_display(global.whiteDropGround);
	}else{
		audio_play_sound(snd_quick_cunt, 0, false);	
		this_text = scr_score_display(global.blackDropGround);
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