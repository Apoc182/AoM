///value0 hi

if(argument0 == "x"){
	cur_x = GRID_SIZE * 4 + random(GRID_SIZE * 28 - (GRID_SIZE * 4));
	while(cur_x > (obj_default.x - GRID_SIZE * 2) && cur_x < obj_default.x + GRID_SIZE * 2) cur_x = GRID_SIZE * 4 + random(GRID_SIZE * 28 - (GRID_SIZE * 4));
	return cur_x;
}

if(argument0 == "y"){
	return (GRID_SIZE * 24) - (sprite_get_height(spr_floor) + sprite_get_height(spr_rb_can)/2);
}