/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red);
draw_set_halign(fa_center);
draw_text((GRID_SIZE * 32)/2, GRID_SIZE * 12, "GAME OVER!");
draw_text((GRID_SIZE * 32)/2, GRID_SIZE * 13, "YOU REACHED " + string(global.scr) + " (+ " + string(global.timer) + " time bonus.)")
draw_text((GRID_SIZE * 32)/2, GRID_SIZE * 14, space_string);
draw_text((GRID_SIZE * 32)/2, GRID_SIZE * 15, esc_string);

if(array_length_1d(top_players) > 0){
	for (var i = 0; i < array_length_1d(top_players); i++){
		draw_text((GRID_SIZE * 32)/2, GRID_SIZE + (i * GRID_SIZE), top_players[i]);
	}
}else{
	draw_set_halign(fa_left);
	draw_text((GRID_SIZE * 32)/2 - GRID_SIZE * 11, GRID_SIZE, "Loading scores" + dot_dot);
}

