/// @description Insert description here
// You can write your code in this editor

//This will draw all the beards

draw_text(window_get_width()/2 - 200, window_get_height()/2 - 200, "Select your Man-Muff");




draw_sprite(spr_default_standing, 0, window_get_width()/2, window_get_height()/2);
draw_sprite(ds_grid_get(global.all_beard_properties, mover, BRD_SPRITE_NAME), 0, window_get_width()/2, window_get_height()/2);
draw_text(100, 100, ds_grid_get(global.all_beard_properties, mover, BRD_BEARD_NAME));