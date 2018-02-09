if(global.player_lives >= full){

	if(image_index < 7) image_index += fill_speed;

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
	
	if(image_index < 3 && rising){
		image_index += fill_speed;
	}

}

else if(global.player_lives >= empty){

	if(image_index > 0 ) image_index = 0;

}




previous_lives = global.player_lives;




