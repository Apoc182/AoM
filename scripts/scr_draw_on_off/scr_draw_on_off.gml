//Draws the on/off in the menus.

if (options && window_get_fullscreen()){
	draw_set_color(c_white);
	draw_text(GRID_SIZE*19, GRID_SIZE*13, "On");
	draw_set_color(make_color_rgb(124,124,124));
	draw_text(GRID_SIZE*20, GRID_SIZE*13, " / Off");
}
if (options && !window_get_fullscreen()){
	draw_set_color(make_color_rgb(124,124,124));
	draw_text(GRID_SIZE*19, GRID_SIZE*13, "On /");
	draw_set_color(c_white);
	draw_text(GRID_SIZE*21, GRID_SIZE*13, " Off");
}

if (options && global.tutorial_on){
	draw_set_color(c_white);
	draw_text(GRID_SIZE*18, GRID_SIZE*14, "On");
	draw_set_color(make_color_rgb(124,124,124));
	draw_text(GRID_SIZE*19, GRID_SIZE*14, " / Off");
}
if (options && !global.tutorial_on){
	draw_set_color(make_color_rgb(124,124,124));
	draw_text(GRID_SIZE*18, GRID_SIZE*14, "On /");
	draw_set_color(c_white);
	draw_text(GRID_SIZE*20, GRID_SIZE*14, " Off");
}