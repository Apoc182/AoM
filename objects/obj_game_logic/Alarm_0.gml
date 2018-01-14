/// @description Insert description here
// You can write your code in this editor



//debug -- information
if(global.debugging){
	show_debug_message("New drop @: " + string(x_location) + "Array_count: " + string(array_count));
	show_debug_message("MULTIPLIER @: " + string(global.time_multiplier));
	show_debug_message("drop_speed: " + string(drop_speed));
}

falling_drops[array_count] = instance_create_depth(x_location,y_location,-1000,obj_drop);
array_count += 1;
alarm[0] = drop_speed;