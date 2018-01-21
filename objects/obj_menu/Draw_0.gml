/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left);

for (var i = 0; i < array_length_1d(menu); i += 1){
	draw_text(x + space, y + (i * space), string(menu[i]));
}

draw_sprite(spr_rb_can, 0, x + 16, y + (mpos * space));
