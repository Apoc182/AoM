if (box_in){
	box_out = false;
	scr_text_box(spr_text_box, x1, y1, x2, y2);

	if(x1 > x1_open) x1 -= box_speed;
	if(x2 < x2_open) x2 += box_speed;
	if(x1 <= x1_open && x2 >= x2_open) x_open = true;
	
	if(x_open = true){
		if(y1 > y1_open) y1 -= box_speed;
		if(y2 < y2_open) y2 += box_speed;
	}
	
	if(y1 <= y1_open && y2 >= y2_open) y_open = true;
}

if (box_out){
	scr_text_box(spr_text_box, x1, y1, x2, y2);
	box_in = false;

	if(y1 < y1_closed) y1 += box_speed;
	if(y2 > y2_closed) y2 -= box_speed;
	if(y1 >= y1_closed && y2 <= y2_closed) y_closed = true;
	
	if(y_closed = true){
		if(x1 < x1_closed) x1 += box_speed;
		if(x2 > x2_closed) x2 -= box_speed;
	}
	
	if(x1 >= x1_closed && x2 <= x2_closed) x_closed = true;
}

open = x_open && y_open;
closed = y_closed && x_closed;