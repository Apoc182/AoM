if(show_escape_string){
	
	
	//Space to skip
	draw_text(GRID_SIZE, GRID_SIZE, "Press ESC to skip...");

	//Indicate the z is the way
	draw_text(GRID_SIZE,  GRID_SIZE * 2, "Hold SPACE to speed up and\nprogress the dialouge");
	
}

if (global.kirsten_ready){
	

	///ALEX, SHOULD WE LEAVE Y2 AT WHERE IT SHOULD BE SO IT OPENS LIKE A SCROLL??
	//draw the text box
	scr_text_box(spr_text_box, x1, y1, x2_animate, y2_animate);
	//draw the text at the coordinates
	draw_text(GRID_SIZE * 8, GRID_SIZE * 10, message_draw);
	
	if(x2_animate < GRID_SIZE * 25) x2_animate += ((GRID_SIZE * 25) - x1) / 25; //Division number is number of redraws
	if(y2_animate < GRID_SIZE * 13) y2_animate += ((GRID_SIZE * 13) - y1) / 25; //until it is a complete rectangle.
	if(x2_animate >= GRID_SIZE * 25 && y2_animate >= GRID_SIZE * 13) box_ready = true;
	show_debug_message("x2: " + string(x2_animate) + "y2: " + string(y2_animate));
}

