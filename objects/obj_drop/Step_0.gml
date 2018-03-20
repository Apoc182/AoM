//move drop towards ground
y += (global.drop_base_speed + this_speed) * stopper;

//Check for drop collision with player
if(place_meeting(x,y,obj_default) && obj_default.active){

	//If the umbrella is away when this happens.
	if(!global.umbrella_out){		
		
		//if not invulnerable
		if(!global.invulnerable){
			
			//decrease lives
			global.player_lives -= global.player_damage;
			
			//Miller speaks
			audio_group_stop_all(audiogroup_dialogue);
			cnt = audio_play_sound(global.rain_hit[random(array_length_1d(global.rain_hit) - 1)], 0, false);
			obj_dynamic_beard.talking = true;
			obj_dynamic_beard.cur_voice = cnt;
			obj_dynamic_beard.one_word = true;
			
			//reset combo multiplier
			global.black_drop_multiplier = 0;
		}
		
		//activate invulerable
		global.invulnerable = true;
		with (obj_default){
			if(!alarm[0]){
				alarm[0] = invulnerable_time * room_speed;
			}
		}
		
		//destroy drop
		instance_destroy();
	}
	
	//If umbrella is out
	if(global.umbrella_out){
		
		//play drop blocked sound
		audio_stop_sound(snd_black_drop_caught);
		var drop_caught = audio_play_sound(snd_black_drop_caught, 0, false);
		audio_sound_pitch(drop_caught, (random(10) + 95) * .01);
		
	
		//for black drops
		if(this_colour == c_black){
			//Count them
			global.num_black_drops++;
			
			//change to score
			instance_change(obj_score, true);
			
			//play drop caught sound
			
			audio_group_stop_all(audiogroup_dialogue);
			combo = audio_play_sound(snd_combo_array[clamp(global.black_drop_multiplier,0,9)], 0, false);
			obj_dynamic_beard.talking = true;
			obj_dynamic_beard.cur_voice = combo;
			if(global.black_drop_multiplier == 9 || global.black_drop_multiplier == 0) obj_dynamic_beard.one_word = true;
						
			//increase combo multiplier
			global.black_drop_multiplier += 1;
			if(global.black_drop_multiplier_max < global.black_drop_multiplier) global.black_drop_multiplier_max = global.black_drop_multiplier;			
			
			//for white drops		
		}else{
			
			//decrease ignorancometer
			if(global.ignorance_level > 0){
				global.ignorance_level -= global.drop_on_umbrella_ignorance_points;
			}
			
			//reset combo multiplier
			global.black_drop_multiplier = 0;
			
			//destroy drop
			instance_destroy();

			//put umbrella away
			//keyboard_clear(vk_space);
		}	
	}
}

//if drop hits ground
if (y > (SCREEN_HEIGHT) - sprite_get_height(spr_floor)){
	
	//change to splash
	instance_change(obj_drop_splash, true);
	
	//if drop is black, reset combo multiplier
	if(this_colour == c_black) global.black_drop_multiplier = 0;
}