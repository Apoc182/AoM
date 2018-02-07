if(global.debugging){

	draw_set_color(c_silver);
	var text_size = sprite_get_height(spr_nesfont);
	draw_text(10, GRID_SIZE * 4 + (text_size * 9), "Background color: " + string(round(current_RGB[0])) + ", " + string(round(current_RGB[1])) +  ", " + string(round(current_RGB[2])));
	draw_set_color(c_white);
}