/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);

for (var i = 0; i < array_length_1d(menu); i += 1){
	if(mpos == i){
		draw_set_color(c_white);
	}else{
		draw_set_color(make_color_rgb(124,124,124));
	}
	draw_text(x + space, y + (i * space), string(menu[i]));
	draw_set_color(c_white);
}

if(draw_fader){
	draw_sprite_ext(spr_lightning, 0, (GRID_SIZE * 32)/2, (GRID_SIZE * 24)/2 - GRID_SIZE * 12, 1, 1, 0, c_black, alpha_variance);
}

draw_sprite_ext(spr_lightning, 0, (GRID_SIZE * 32)/2, (GRID_SIZE * 24)/2, 1, 1, 0, c_black, alpha_variance_in);