if(show_escape_string){
	
	
	//Space to skip
	draw_text(GRID_SIZE, GRID_SIZE, "Press ESC to skip...");

	//Indicate the z is the way
	draw_text(GRID_SIZE,  GRID_SIZE * 2, "Hold SPACE to speed up and\nprogress the dialouge");
	
}

if (global.kirsten_ready){
	//draw the text box
	scr_text_box(spr_text_box, GRID_SIZE * 6, GRID_SIZE * 8, GRID_SIZE * 25, GRID_SIZE * 13);
	//draw the text at the coordinates
	draw_text(GRID_SIZE * 8, GRID_SIZE * 10, message_draw);

}

