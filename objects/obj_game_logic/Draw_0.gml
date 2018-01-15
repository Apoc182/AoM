//scoreboard

draw_set_color(c_black);
draw_text(10,10,"Score: " + string(global.scr));
draw_text(10,20,"Current Max: " + string(global.max_score));
draw_text(10,30,"Debug name: " + global.user_name);
//Timer
draw_text(10,45,"Time: " +  string(timer mod 60));

//Draw the lives on the screen
for (var i = 0; i < global.player_lives; i++){
	draw_sprite(spr_lives, -1, (window_get_width() - 80) - ((sprite_get_width(spr_lives) + 10) * i), 50);
}







