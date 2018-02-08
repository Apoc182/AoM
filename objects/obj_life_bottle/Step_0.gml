var current_bottle_full = ((position + 1) * 6);
var current_bottle_half = ((position + 1) * 6) - 3;

//If its falling
if(last_lives > global.player_lives){
	
	//This bottle aught be full and the previous one aight be falling.
	if(current_bottle_full == last_lives){
		falling = true;
		if(global.player_damage mod 6 == 0) half_full = empty;
		level = half_full;
		half_full = 3;

		
	}

	if(current_bottle_half == last_lives){
		falling = true;
		level = empty;

	}
		
	
}



	
//If its rising
if(last_lives < global.player_lives){


	if(current_bottle_full == last_lives){
		if(global.player_damage mod 6 == 0) half_full = full;
		var next_bottle = instance_find(obj_life_bottle, position + 1);
		next_bottle.rising = true;
		next_bottle.level = half_full;
		image_index = 6;		
		
	}

	if(current_bottle_half == last_lives){

		
		rising = true;
		level = full;
		fill_to_right = true;


	}
	
	
	
}

if(fill_to_right && image_index = 6){

	if(instance_exists(instance_find(obj_life_bottle, position + 1))){
		var next_bottle = instance_find(obj_life_bottle, position + 1);
		next_bottle.rising = true;
		next_bottle.level = half_full;
	}
	fill_to_right = false;

}
	




if(falling){
	if(image_index > level){
		image_index -= frame_speed;
	}else{
		falling = false;
	}
}

if(rising){
	if(image_index < level){
		image_index += frame_speed;
	}else{
		rising = false;		
	}
}


//Retain the value of the player lives previously
last_lives = global.player_lives;