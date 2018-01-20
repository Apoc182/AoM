/// @description Insert description here
// You can write your code in this editor

switcher = random(1);

if(switcher){
	instance_create_depth(126 + random(918 - 126), window_get_height() - (sprite_get_height(spr_floor) + sprite_get_height(spr_rb_can)/2), 200, obj_rb_can);
}else{
	instance_create_depth(126 + random(918 - 126), window_get_height() - (sprite_get_height(spr_floor) + sprite_get_height(spr_rb_can)/2), 200, obj_hot_sauce);
}