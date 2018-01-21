/// @description Insert description here
// You can write your code in this editor

if(paused){
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(window_get_width()/2, window_get_height()/2, "PAUSED");
	draw_text(window_get_width()/2, window_get_height()/2 + global.grid_size, "PRESS M FOR MENU");
	draw_text(window_get_width()/2, window_get_height()/2 + global.grid_size * 2, "PRESS Q TO QUIT");
}