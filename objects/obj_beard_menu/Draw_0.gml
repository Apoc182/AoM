/// @description Insert description here
// You can write your code in this editor

//This will draw all the beards

draw_text(window_get_width()/2 - 200, window_get_height()/2 - 200, "Select your Man-Muff");



for(var i = 0; i < array_length_1d(global.beards_to_choose); i++){
	draw_sprite(spr_box, 0, origin + (box_width * i), window_get_height()/2);
	beard_locations[i] = origin + (box_width * i);
}

draw_sprite(spr_default_standing, 0, beard_locations[mover], window_get_height()/2);

for(var i = 0; i < array_length_1d(global.beards_to_choose); i++){
	draw_sprite(global.beards_to_choose[i], 0, origin + (box_width * i), window_get_height()/2);
}