/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);

for (var i = 0; i < array_length_1d(menu); i += 1){
	if(mpos == i){
		draw_set_color(c_red);
	}else{
		draw_set_color(c_white);
	}
	draw_text(x + space, y + (i * space), string(menu[i]));
}
