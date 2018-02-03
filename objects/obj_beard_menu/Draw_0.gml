//This will draw all the beards

draw_set_halign(fa_center);
draw_text(GRID_SIZE * 16, GRID_SIZE * 2, "Select your Man-Muff");

draw_sprite(spr_barberbg, 0, GRID_SIZE * 2, GRID_SIZE * 6);
draw_sprite(spr_default_standing, 0, GRID_SIZE * 7, GRID_SIZE * 13.5);
draw_sprite(ds_grid_get(global.all_beard_properties, mover, BRD_SPRITE_NAME), 0, GRID_SIZE * 7, GRID_SIZE * 13.5);
draw_sprite_ext(spr_default_standing, 0, GRID_SIZE * 11, GRID_SIZE * 13.5, -1,1,0,c_white,1);
draw_sprite_ext(ds_grid_get(global.all_beard_properties, mover, BRD_SPRITE_NAME), 0, GRID_SIZE * 11, GRID_SIZE * 13.5,-1,1,0,c_white,1);
draw_sprite(spr_barber, 0, GRID_SIZE * 2, GRID_SIZE * 6);

draw_text(GRID_SIZE * 16, GRID_SIZE * 21, ds_grid_get(global.all_beard_properties, mover, BRD_BEARD_DESCRIPTION));

if(box.open && !confirm){
	for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){
	
		if(mover == i){
			draw_set_color(c_white);
		}else{
			draw_set_color(make_color_rgb(124, 124, 124));
		}
		
		if(ds_grid_get(global.all_beard_properties, i, BRD_UNLOCKED)){
			draw_set_halign(fa_left);
			draw_text(GRID_SIZE * 17.5, GRID_SIZE * 6.5 + (i * GRID_SIZE), ds_grid_get(global.all_beard_properties, i, BRD_BEARD_NAME))
		}else{
			draw_set_halign(fa_right);
			draw_text(GRID_SIZE * 28, GRID_SIZE * 6.5 + (i * GRID_SIZE), string(ds_grid_get(global.all_beard_properties, i, BRD_SCORE_TO_UNLOCK)) + " points to unlock")
		}

	}
}

draw_set_color(c_white);