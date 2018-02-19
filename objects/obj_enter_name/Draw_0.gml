if(!instance_exists(box))exit;

if(box.open){
	draw_set_color(c_white);
	draw_text(GRID_SIZE * 10, GRID_SIZE * 10, "Please enter your name:");
	draw_text(GRID_SIZE * 13, GRID_SIZE * 12, user_name);
	if(string_length(user_name) == 12){
			draw_text(GRID_SIZE * 10, GRID_SIZE * 16, "Maximum length reached!");
	}
}