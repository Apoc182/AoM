if (box_in){
	//draw the text box
	scr_text_box(spr_text_box, x1, y1, x2, y2);
	//draw the text at the coordinates



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

open = x_ready_in && y_ready_in;
closed = y_ready_out && x_ready_out;
		