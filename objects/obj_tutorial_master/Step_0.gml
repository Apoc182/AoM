//Controllers
if(fade_in && alpha_variance < 1){
	alpha_variance += .02;
}

if(fade_out && alpha_variance > 0){
	alpha_variance -= .02;
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
	if(new_bitter.picked_up){
		red_bitter_spawns = true;
		next_text = true;
	}
}


//"Awesome! Now here comes the rain!"
if(current_text_pos == 3 && next_text = false){
	
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
	if(global.player_lives < current_lives){
		next_text = true;
		red_bitter_spawns = false;
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
	if(new_sauce.picked_up){
		next_text = true;
		hot_sauce_spawns = true;
		red_bitter_spawns = true;
	}
}


//Collect the black sentences with the umbrella for mad-ass points!
if(current_text_pos == 5 && next_text = false){
	
	//Ran once only
	if(active){
		global.colour_array = [c_white, c_white, c_white, c_white, 
							   c_white, c_white, c_white, c_black];
		active = false;
	}
	
	//Constantly running
	if(global.scr = 500){
	next_text = true;
	}
}

if(current_text_pos == 6 && next_text = false){

		if(global.player_lives <= 0 && alpha_variance_again < 1){
			alpha_variance_again += .01;
		}
		if(alpha_variance_again == 1){
			room_restart();
		}
	
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