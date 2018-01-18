/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_red);
draw_text(352, 384, "GAME OVER!");
draw_text(224, 448, "YOU REACHED ")
draw_set_halign(fa_right);
draw_text(800, 448, string(global.max_score));
draw_set_halign(fa_left);
draw_text(160, 512, "PRESS SPACE TO RESTART");
draw_text(160, 544, "PRESS ESC TO RETURN TO MENU");

if(array_length_1d(top_players) > 0){
	for (var i = 0; i < array_length_1d(top_players); i++){
		draw_text(64, 32 + (i * 32), top_players[i]);
	}
}

