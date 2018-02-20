//Controllers
if(fade_in && alpha_variance < 1){
	alpha_variance += fade_speed;
}

if(fade_out && alpha_variance > 0){
	alpha_variance -= fade_speed;
}

//text delay while alarms are triggered
if(next_text = true){
	if(alarm[0] > room_speed * 2){
		alarm[0] = room_speed * 2;
	}
	if(!alarm[1]){
		alarm[1] = room_speed * 4  ;
	}
}


//"Welcome to Miller's dream!\nPress SPACE to use your Umbrella of Ignorance!"
if(current_text_pos == 1 && next_text = false){
	if(keyboard_check_pressed(vk_space)){
		next_text = true;
	}
}


//"Collect 'Der Bitter' to fill Umbrella metre."
if(current_text_pos == 2 && next_text = false){
	
	//Ran once only
	if(active){
		new_bitter = instance_create_depth(scr_place_pickup("x"), scr_place_pickup("y"), obj_default.depth, obj_rb_can);
		new_bitter.alarm[1] = false;
		active = false;
	}
	
	//Constantly running

	if(!instance_exists(new_bitter)){
		red_bitter_spawns = true;
		next_text = true;
	}

}


//"Awesome! Now here comes the rain!"
if(current_text_pos == 3 && next_text = false){
	
	//Ran once only
	if(active){
		global.colour_array = [c_white];
		active = false;
		current_lives = global.player_lives;
		with obj_kirsten_front {
			image_speed = 1;
		}
	}
	
	//Constantly running
	else{
		rain_drop_spawns = true;
		
		//Get hit on the head
		if(global.player_lives < current_lives){
			next_text = true;
			red_bitter_spawns = false;
			global.time_multiplier = 0;
			with obj_game_logic {
				drop_speed = .5 * room_speed;
			}
		}
			
		
		global.time_multiplier += .01;
		with obj_game_logic {
			if(drop_speed > (.1 * room_speed)){
				drop_speed -= .001 * room_speed;
			}
		}
	}
}
		


//"Collect Smokey Joe's delicious hotsauce to replenish lives!"
if(current_text_pos == 4 && next_text = false){
	
	//Ran once only
	if(active){
		new_sauce = instance_create_depth(scr_place_pickup("x"), scr_place_pickup("y"), obj_default.depth, obj_hot_sauce);
		new_sauce.alarm[1] = false;
		active = false;
	}
	
	//Constantly running
	if(!instance_exists(new_sauce)){
		next_text = true;
		hot_sauce_spawns = true;
		red_bitter_spawns = true;
	}
}


//Collect the black sentences with the umbrella for mad-ass points!
if(current_text_pos == 5 && next_text = false){
	
	//Ran once only
	if(active){
		global.colour_array = [c_white, c_white, c_white, c_white, c_white, 
								c_white, c_white, c_white, c_white, c_black];
		active = false;
	}
	
	//Constantly running
	if(global.scr >= 500){
		fade_in = true;
		fade_out = false;
		active = true;
		next_text = true;
		current_text_pos++;
	}
}

if(current_text_pos == 7 && next_text = false){
	esc_set = true;
}


if(red_bitter_spawns){
	if(hot_sauce_spawns){ 
		with obj_game_logic{
			switcher = random(1);
			if(!alarm[1]) alarm[1] = room_speed * (10 + random(5));
		}
	}else{
		with obj_game_logic{
				switcher = 1
				if(!alarm[1]) alarm[1] = room_speed * (10 + random(5));
		}
	}
}

if(rain_drop_spawns){

	with obj_game_logic {
			if(!alarm[0]){
				alarm[0] = drop_speed;
				alarm_on = true;
		}
	}
}

if(keyboard_check(vk_escape)){
	esc_set = true;
}

if(esc_set){
	global.tutorial_on = false;
	scr_save_ini("Save", "tutorial_on", global.tutorial_on);
	scr_fader(dream, c_white);
}