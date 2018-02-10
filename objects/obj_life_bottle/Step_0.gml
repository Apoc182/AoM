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



//Below ensures the bottles wont fill until the ones behind them have and visa versa.
for (i = 0; i < instance_number(obj_life_bottle); i += 1){
   
   var current = instance_find(obj_life_bottle, i);
   
   if(current.position == position + 1){
		left_bottle = current;
   }else{
		left_bottle = noone;
   }
   if(current.position == position - 1){
		right_bottle = current;
   }else{
	   right_bottle = noone;
   }
   
}

if(left_bottle != noone){
	if(left_bottle.image_index > 0) image_index = 6;

}

if(right_bottle != noone){
	if(right_bottle.image_index < 7) image_index = 0;
}




previous_lives = global.player_lives;




