
//Insert waking up animation here
if(obj_sleeping.sprite_index == spr_default_sleeping && walking_counter == room_speed * 2){

	obj_sleeping.sprite_index = spr_walking;
	
	//Kill the zzzzzz
	instance_destroy(obj_zzz);

}

//Wait for an arbitrary amount of time...
//Coming kirstyn
if(walking_counter == room_speed * 4){



}

//When kirsten is said...

if(walking_counter >= 7 * room_speed){

	obj_sleeping.x += 4;


}


//Destroy the object when complete.
if(obj_sleeping.x > SCREEN_WIDTH){

	instance_destroy(obj_sleeping);


}



walking_counter++;