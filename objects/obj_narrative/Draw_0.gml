if(show_escape_string){
	
	
	//Space to skip
	draw_text(GRID_SIZE, GRID_SIZE, "Press ESC to skip...");

	//Indicate the z is the way
	draw_text(GRID_SIZE,  GRID_SIZE * 2, "Hold SPACE to speed up and\nprogress the dialouge");
	
}

if (global.kirsten_ready && !box.box_out) {
box.box_in = true;

}

draw_text_transformed(GRID_SIZE * 8, GRID_SIZE * 10, message_draw, 1 + text_increaser, 1 + text_increaser, 0);