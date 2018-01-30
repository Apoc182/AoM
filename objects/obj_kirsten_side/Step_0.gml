/// @description Insert description here
// You can write your code in this editor

//Stop her before she runs into the couch

speed_key = keyboard_check(vk_space);


if(x <= 736){
	speed = 0;
	global.kirsten_ready = true;
	sprite_index = spr_kirsten_talking;
	
	if(obj_narrative.characters < obj_narrative.message_length){
		image_speed = 1; 
	}else{
		image_index = 0;
		image_speed = 0;
	}
}else if(speed_key){
	
	speed = 4;

}else{
	speed = 1;
}
