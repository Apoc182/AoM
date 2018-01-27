/// @description Insert description here
// You can write your code in this editor

//Stop her before she runs into the couch

speed_key = keyboard_check(vk_space);


if(x <= 736){
	speed = 0;
	global.kirsten_ready = true;
	sprite_index = spr_kirsten_talking;
}else if(speed_key){
	
	speed = 4;

}else{
	speed = 2;
}
