if(global.player_lives >= full){

	if(image_index <= 6) image_index += fill_speed;

}

else if(global.player_lives >= half_full){

	if(previous_lives < global.player_lives){
		rising = true;
		falling = false;
	}
	
	if(previous_lives > global.player_lives){
		falling = true;
		rising = false;
	}
	
	if(image_index > 3 && falling){
		image_index = 3;
	}
	
	if(image_index < 3 && falling){
		image_index  = 0;
	}
	
	if(image_index <= 3 && rising){
		image_index += fill_speed;
	}

}

else if(global.player_lives >= empty){

	if(image_index > 0 ) image_index = 0;

}

//A complicated-assed way to make the bottles wait for each other to fill.
if(init && array_length_1d(global.bottle_number) == (global.player_lives / 6) + 1){

	init = false;
	if(position != 0) right_bottle = global.bottle_number[position - 1];

}

if(!is_undefined(right_bottle)){

	if(right_bottle.image_index < 6 && right_bottle.image_index > 3) image_index = 0;

}




previous_lives = global.player_lives;




