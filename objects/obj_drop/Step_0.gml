/// @description Insert description here
// You can write your code in this editor


//Hit


//Check for drop collision with player
//if (!place_empty(x, y) && y > umberella_out_kill_location && place_meeting(x,y,obj_default) && x + sprite_width >= obj_default.x * obj_default.image_xscale && x <= obj_default.x + 64 * obj_default.image_xscale){


if(place_meeting(x,y,obj_default) && !drop_contact){
	//If the umberella is away when this happens.
	if(!global.umberella_out){
		current = global.whiteDropHead;
		this_text = string(current);
		audio_play_sound(global.rain_hit[random(array_length_1d(global.rain_hit) - 1)], 0, false);
	}
	
	//If umberella is out
	if(global.umberella_out){
		if(this_colour == c_black){
			current = global.blackDropUmberella;
			this_text = "+" + string(current);
			global.scr += global.blackDropUmberella;	
		}else{
			current = global.whiteDropUmberella * -1;
			this_text = string(current);
			global.scr -= global.whiteDropUmberella;
		}
		
	//If umberella is away
	}else{
		if(this_colour == c_white){
			current = global.whiteDropHead * -1;
			this_text = string(current);
			global.scr -= global.whiteDropHead;
		}else{
			current = global.blackDropHead * -1;
			this_text = string(current);
			global.scr -= global.blackDropHead;
		}
	
	}
	
	alarm[0] = 2 * room_speed;
	
	drop_contact = true;
	
}

if (y > window_get_height() - sprite_get_height(spr_floor) && !drop_contact){
	

	
	if(this_colour == c_white){
		current = global.whiteDropGround;
		global.scr += global.whiteDropGround;
		this_text = "+" + string(current);
	}else{
		current = global.blackDropGround * -1;
		global.scr -= global.blackDropGround;
		audio_play_sound(snd_quick_cunt, 0, false);	
		this_text = string(current);
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