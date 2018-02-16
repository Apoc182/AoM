if(global.debugging){

	draw_set_color(c_silver);
	var text_size = sprite_get_height(spr_nesfont);
	draw_text(10, GRID_SIZE * 4 + (text_size * 9), "Background color: " + string(round(current_RGB[0])) + ", " + string(round(current_RGB[1])) +  ", " + string(round(current_RGB[2])));
	draw_set_color(c_white);
}

if(global.fade_to_black){

	draw_sprite_ext(spr_lightning, 0, (SCREEN_WIDTH)/2, GRID_SIZE * 14, 1, 1, 0, c_black, obj_game_logic.fade_out_variance);

}