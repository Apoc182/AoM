/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);

for (var i = 0; i < array_length_1d(menu); i += 1){
	if(mpos == i){
		draw_set_color(c_white);
	}else{
		draw_set_color(make_color_rgb(124,124,124));
	}
	if(options){
		draw_text(x - GRID_SIZE, y + (i * GRID_SIZE), string(menu[i]));
	}else{	
		
		draw_text(x + GRID_SIZE*2, y + (i * GRID_SIZE), string(menu[i]));
	}
	draw_set_color(c_white);
}

scr_draw_on_off();