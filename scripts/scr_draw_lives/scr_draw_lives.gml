//Draw the lives on the screen

for(i = 0; i < max_lives / 6; i++){

	draw_sprite(spr_lives, 0, (27.5 * GRID_SIZE) - ((GRID_SIZE) * i), GRID_SIZE);

}




for(i = 0; i < floor(global.player_lives / 6); i++){

	draw_sprite(spr_lives, 6, (27.5 * GRID_SIZE) - ((GRID_SIZE) * i), GRID_SIZE)
	
}


if(floor(global.player_lives / 6) != global.player_lives / 6) {
	
	draw_sprite(spr_lives, 3, (27.5 * GRID_SIZE) - ((GRID_SIZE) * (floor(global.player_lives / 6))), GRID_SIZE);
	
}