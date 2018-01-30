if(show_escape_string){
	
	
	//Space to skip
	draw_text(GRID_SIZE, GRID_SIZE, "Press ESC to skip...");

	//Indicate the z is the way
	draw_text(GRID_SIZE,  GRID_SIZE * 2, "Hold SPACE to speed up and\nprogress the dialouge");
	
}

if (global.kirsten_ready && !box_out){
	box_in = true;
}
	
if (box_in){
	//draw the text box
	scr_text_box(spr_text_box, x1, y1, x2, y2);
	//draw the text at the coordinates

	draw_text_transformed(GRID_SIZE * 8, GRID_SIZE * 10, message_draw, 1 + text_increaser, 1 + text_increaser, 0);
	if(x1 > GRID_SIZE * 6) x1 -= box_speed;
	if(x2 < GRID_SIZE * 26) x2 += box_speed;
	if(x1 <= GRID_SIZE * 6 && x2 >= GRID_SIZE * 26) x_ready_in = true;
	if(x_ready_in = true){
		if(y1 > GRID_SIZE * 8) y1 -= box_speed;
		if(y2 < GRID_SIZE * 14) y2 += box_speed;
	}
	if(y1 <= GRID_SIZE * 8 && y2 >= GRID_SIZE * 14) y_ready_in = true;
}

if (box_out){
	scr_text_box(spr_text_box, x1, y1, x2, y2);
		box_in = false;
	if(y1 < GRID_SIZE * 10) y1 += box_speed;
	if(y2 > GRID_SIZE * 12) y2 -= box_speed;
	if(y1 >= GRID_SIZE * 10 && y2 <= GRID_SIZE * 12) y_ready_out = true;
	if(y_ready_out = true){
		if(x1 < GRID_SIZE * 15) x1 += box_speed;
		if(x2 > GRID_SIZE * 17) x2 -= box_speed;
	}
	if(x1 >= GRID_SIZE * 15 && x2 <= GRID_SIZE * 17) x_ready_out = true;
}
		