/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red);
draw_set_halign(fa_center);
draw_text(window_get_width()/2, GRID_SIZE * 12, "GAME OVER!");
draw_text(window_get_width()/2, GRID_SIZE * 13, "YOU REACHED " + string(global.scr))
draw_text(window_get_width()/2, GRID_SIZE * 14,"PRESS SPACE TO RESTART");
draw_text(window_get_width()/2, GRID_SIZE * 15,"PRESS ESC TO RETURN TO MENU");

if(array_length_1d(top_players) > 0){
	for (var i = 0; i < array_length_1d(top_players); i++){
		draw_text(window_get_width()/2, GRID_SIZE + (i * GRID_SIZE), top_players[i]);
	}
}else{
	draw_text(window_get_width()/2, GRID_SIZE, "Loading scores" + dot_dot);
}

