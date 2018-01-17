/// @description Insert description here
// You can write your code in this editor


if(picked_up){
	draw_set_color(c_red);
	draw_text(x,rising, "+" + string(global.rb_can_pickup));
}else{
	draw_self();
}