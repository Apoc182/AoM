/// @description Insert description here
// You can write your code in this editor

//This will draw all the beards
for(var i = 0; i < array_length_1d(menu); i++){
	draw_text(origin + (box_width * i) - 20, window_get_height()/2 - box_half_height*2, menu_titles[i]);
	draw_sprite(spr_box, -1, origin + (box_width * i), window_get_height()/2);
	draw_sprite(menu[i], -1, origin + (box_width * i), window_get_height()/2);
	beard_locations[i] = origin + (box_width * i);
}



draw_sprite(spr_rb_can, -1, beard_locations[mover], window_get_height()/2 + box_half_height * 2);