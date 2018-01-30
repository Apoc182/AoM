/// @description Insert description here
// You can write your code in this editor

//This will draw all the beards

draw_text(window_get_width()/2 - 200, window_get_height()/2 - 200, "Select your Man-Muff");




draw_sprite(spr_default_standing, 0, window_get_width()/2, window_get_height()/2);
draw_sprite(ds_list_find_value(global.unlocked_beards, mover), 0, window_get_width()/2, window_get_height()/2);
for(var i = 0; i < ds_list_size(global.sprite_names); i++){
	draw_text((window_get_width()/3) * 2, 50 + (sprite_get_height(spr_nesfont) * i), ds_list_find_value(global.sprite_names, mover + i));
}