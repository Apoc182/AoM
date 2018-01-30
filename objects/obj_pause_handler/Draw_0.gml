/// @description Insert description here
// You can write your code in this editor

if(paused){
	
	if(box.open && !quitting){
		draw_set_halign(fa_center);
		for(var i = 0; i < array_length_1d(menu_items); i++){
			if(mover = i){
				draw_set_color(c_red);
			}else{
				draw_set_color(c_white);
			}
		
			draw_text(window_get_width()/2, (window_get_height()/2 - (2 * GRID_SIZE)) + (i * text_height), menu_items[i]);	
		}
	}
	
	
	
	

}