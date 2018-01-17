//scoreboard

draw_set_color(c_black);
draw_text(10,10,"Score: " + string(global.scr));
draw_text(10,30,"Current Max: " + string(global.max_score));
if(global.debugging){
	draw_text(10,50,"Debug name: " + global.user_name);
	draw_text(10,70,"Time: " +  string(timer mod 60));
}else{
	//Timer
	draw_text(10,50,"Time: " + string(floor(timer/60)) + ":" + string(timer mod 60));
}


//Draw the lives on the screen
for (var i = 0; i < global.player_lives; i++){
	draw_sprite(spr_lives, -1, (window_get_width() - 150) - ((sprite_get_width(spr_lives) + 10) * i), 50);
}

//Display beard unlocked.
if(beard_unlocked){
	draw_text(obj_default.x - obj_default.sprite_width/2 , obj_default.y - obj_default.sprite_height/2 - 20, "New beard Unlocked!");
	if(!alarm[5]){
		alarm[5] = room_speed;
	}
}






