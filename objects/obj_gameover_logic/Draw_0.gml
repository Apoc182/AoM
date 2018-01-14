/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red);
draw_text(window_get_width()/2, window_get_height()/2, "GAME OVER");
draw_text(window_get_width()/2, window_get_height()/2 + 20, "YOU REACHED: " + string(global.max_score));
draw_text(window_get_width()/2, window_get_height()/2 + 40, "PRESS SPACE TO RESTART");

if(array_length_1d(top_players) > 0){
	for (var i = 0; i < array_length_1d(top_players); i++){
		draw_text(10, 20 + (i * 20), top_players[i]);
	}
}

