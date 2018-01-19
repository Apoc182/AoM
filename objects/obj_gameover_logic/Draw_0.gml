/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red);
draw_text(11 * global.grid_size, 12 * global.grid_size, "GAME OVER!");
draw_text(7 * global.grid_size, 14 * global.grid_size, "YOU REACHED " + string(global.max_score))
draw_set_halign(fa_left);
draw_text(5 * global.grid_size, 16 * global.grid_size, "PRESS SPACE TO RESTART");
draw_text(5 * global.grid_size, 17 * global.grid_size, "PRESS ESC TO RETURN TO MENU");

if(array_length_1d(top_players) > 0){
	for (var i = 0; i < array_length_1d(top_players); i++){
		draw_text(2 * global.grid_size, global.grid_size + (i * global.grid_size), top_players[i]);
	}
}else{
	draw_text(2 * global.grid_size, global.grid_size , "Loading scores" + dot_dot);
}

