if(!instance_exists(box))exit;

if(box.open){
	draw_set_halign(fa_center);
	for(var i = 0; i < array_length_1d(menu_items); i++){
		if(mover = i){
			draw_set_color(c_white);
		}else{
			draw_set_color(make_color_rgb(124,124,124));
		}
		
		draw_text((SCREEN_WIDTH)/2, ((SCREEN_HEIGHT)/2 - (2 * GRID_SIZE)) + (i * GRID_SIZE), menu_items[i]);	
		draw_set_color(c_white);
	}
}
