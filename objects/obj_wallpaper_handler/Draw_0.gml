if(global.debugging){

	draw_set_color(c_silver);
	var text_size = sprite_get_height(spr_nesfont);
	draw_text(GRID_SIZE, GRID_SIZE * 4 + (text_size * 12), "Background color: " + string(round(current_RGB[0])) + ", " + string(round(current_RGB[1])) +  ", " + string(round(current_RGB[2])));
	draw_set_color(c_white);
}