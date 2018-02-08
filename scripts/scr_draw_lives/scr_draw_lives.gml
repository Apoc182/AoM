//Draw the lives on the screen
var draw_limit = floor(global.player_lives / 6);

//If the current lives is not the same as the last frames lives
if(global.player_lives != last_lives) fill = true;

if(fill) filler += .01;

if(filler == 3) fill = false;




if(floor(global.player_lives / 6) != global.player_lives / 6) {
	
	
	draw_sprite(spr_lives, 0 + filler, (27.5 * GRID_SIZE) - ((GRID_SIZE) * (floor(global.player_lives / 6))), GRID_SIZE);
	
}



for(i = 0; i < draw_limit; i++){
	
	
	
	draw_sprite(spr_lives, 6, (27.5 * GRID_SIZE) - ((GRID_SIZE) * i), GRID_SIZE)
	
}




last_lives = global.player_lives;