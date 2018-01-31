/// @description Insert description here
// You can write your code in this editor

//This will draw all the beards

draw_text(window_get_width()/2 - 200, window_get_height()/2 - 200, "Select your Man-Muff");




draw_sprite(spr_default_standing, 0, window_get_width()/2, window_get_height()/2);
draw_sprite(ds_list_find_value(global.unlocked_beards, mover), 0, window_get_width()/2, window_get_height()/2);
for(var i = 0; i < ds_grid_width(global.all_beard_properties); i++){
	if(ds_list_find_index(global.unlocked_beards, ds_grid_get(global.all_beard_properties, i, 0))){
		draw_text((window_get_width()/3) * 2, 50 + (sprite_get_height(spr_nesfont) * i), ds_grid_get(global.all_beard_properties, i, 1));
	}
}