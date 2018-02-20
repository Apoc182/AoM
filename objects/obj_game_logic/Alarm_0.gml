/// @description Insert description here
// You can write your code in this editor





y_location = random(50) * -1;
x_location = floor(sprite_get_height(spr_nesfont)/2 + random(SCREEN_WIDTH - (sprite_get_height(spr_nesfont))));

//Prevent the drops from spawning on the same x coordinate.

for(var i = 0; i < sprite_get_width(drop) * 2; i++){
	if(ds_list_find_index(occupied_x, (x_location - sprite_get_width(drop)) + i) != -1){
		x_location = floor(sprite_get_height(spr_nesfont)/2 + random(SCREEN_WIDTH - (sprite_get_height(spr_nesfont))));
		i = -1;
	}
}


ds_list_add(occupied_x, x_location);

instance_create_depth(x_location,y_location,75,obj_drop);
alarm[0] = drop_speed ;

//debug -- information
if(global.debugging){
	show_debug_message("MULTIPLIER @: " + string(global.time_multiplier));
	show_debug_message("drop_speed: " + string(drop_speed));
	show_debug_message("occupied_x_length: " + string(ds_list_size(occupied_x)));
}
