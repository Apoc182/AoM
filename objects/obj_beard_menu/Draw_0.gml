/// @description Insert description here
// You can write your code in this editor

//This will draw all the beards

draw_text((GRID_SIZE * 32)/2 - 200, (GRID_SIZE * 24)/2 - 200, "Select your Man-Muff");

draw_sprite(spr_default_standing, 0, (GRID_SIZE * 32)/2, (GRID_SIZE * 24)/2);
draw_sprite(ds_grid_get(global.all_beard_properties, mover, BRD_SPRITE_NAME), 0, (GRID_SIZE * 32)/2, (GRID_SIZE * 24)/2);
draw_text((GRID_SIZE * 32)/2, ((GRID_SIZE * 24)/2) + GRID_SIZE * 4, ds_grid_get(global.all_beard_properties, mover, BRD_BEARD_DESCRIPTION));

for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){
	
	if(mover == i){
		draw_set_color(c_white);
	}else{
		draw_set_color(make_color_rgb(124, 124, 124));
	}
		
	if(ds_grid_get(global.all_beard_properties, i, BRD_UNLOCKED)){
		draw_text(GRID_SIZE * 20, GRID_SIZE * 3 + (i * GRID_SIZE), ds_grid_get(global.all_beard_properties, i, BRD_BEARD_NAME))
	}else{
		draw_text(GRID_SIZE * 20, GRID_SIZE * 3 + (i * GRID_SIZE), string(ds_grid_get(global.all_beard_properties, i, BRD_SCORE_TO_UNLOCK)) + " points to unlock")
	}

}

draw_set_color(c_white);