/// @description Insert description here
// You can write your code in this editor

if(switcher){
	instance_create_depth(scr_place_pickup("x"), scr_place_pickup("y"), 200, obj_rb_can);
}else{
	instance_create_depth(scr_place_pickup("x"), scr_place_pickup("y"), 200, obj_hot_sauce);
}