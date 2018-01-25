//Controllers
if(fade_in && alpha_variance < 1){
	alpha_variance += .01;
}

if(fade_out && alpha_variance > 0){
	alpha_variance -= .01;
}


//"Welcome to Miller's dream!\nPress SPACE to use your Umbrella of Ignorance!"
if(keyboard_check_pressed(vk_space) && alpha_variance == 1 && current_text_pos == 0){
	if(!alarm[1]){
		alarm[1] = 3 * room_speed
	}
}


//"Collect 'Der Bitter' to fill Umbrella metre."
if(current_text_pos == 1 && alpha_variance == 1){
	//Ran once only
	if(active){
		new_bitter = instance_create_depth(scr_place_pickup("x"), scr_place_pickup("y"), obj_default.depth, obj_rb_can);
		new_bitter.alarm[1] = false;
		active = false;
	}
	
	//Constantly running
	else{
		if(global.ignorance_level > 8 && !alarm[1]){
			instance_destroy(new_bitter);
			alarm[1] = 3 * room_speed;
			red_bitter_spawns = true;
			
		}
	}
}


//"Awesome! Now here comes the rain!"
if(current_text_pos == 2 && alpha_variance == 1){
	//Ran once only
	if(active){
		
		global.colour_array = [c_white, c_white, c_white, c_white, 
							   c_white, c_white, c_white, c_white];
							   
		active = false;
		current_lives = global.player_lives;
	}
	
	//Constantly running
	else{
		
		rain_drop_spawns = true;
						
		}
		
	//Get hit on the head
	if(global.player_lives < current_lives && !alarm[1]){
		alarm[1] = 3 * room_speed;
	}
}


//"Collect Smokey Joe's delicious hotsauce to replenish lives!"
if(current_text_pos == 3 && alpha_variance == 1){
	
	//Ran once only
	if(active){
		new_sauce = instance_create_depth(scr_place_pickup("x"), scr_place_pickup("y"), obj_default.depth, obj_hot_sauce);
		new_sauce.alarm[1] = false;
		active = false;
	}
	
	//Constantly running
	else{
		if(new_sauce.picked_up && !alarm[1]){
			alarm[1] = 3 * room_speed;
			hot_sauce_spawns = true;
		}
	}
}

//Collect the black sentences with the umbrella for mad-ass points!
if(current_text_pos == 4 && alpha_variance == 1){
	
	//Ran once only
	if(active){
		global.colour_array = [c_white, c_white, c_white, c_white, 
							   c_white, c_white, c_white, c_black];
		active = false;
	}
	
	//Constantly running
	else{
		
		if(!alarm[1]){
			alarm[1] = alarm[1] = 3 * room_speed;
		}
		
	}
}

if(current_text_pos == 5 && alpha_variance == 1){
	show_message("hi")

		if(global.player_lives <= 0 && alpha_variance_again < 1){
			alpha_variance_again += .01;
		}
		if(alpha_variance_again == 1){
			room_restart();
		}
	
}




if(alpha_variance == 0){
	current_text_pos++;
	fade_out = false;
	fade_in = true;
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