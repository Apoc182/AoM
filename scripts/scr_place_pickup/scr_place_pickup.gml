///value0 hi

if(argument0 == "x"){
	cur_x = 126 + random(918 - 126);
	while(cur_x > obj_default.x - sprite_get_width(spr_default_standing)/2 && cur_x < obj_default.x + sprite_get_width(spr_default_standing)/2) cur_x = 126 + random(918 - 126);
	return cur_x;
}

if(argument0 == "y"){
	return window_get_height() - (sprite_get_height(spr_floor) + sprite_get_height(spr_rb_can)/2);
}