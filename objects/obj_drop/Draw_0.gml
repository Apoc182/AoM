/// @description Insert description here
// You can write your code in this editor

draw_set_color(this_colour);
if(drop_contact){
	draw_text(x - sprite_width,y + sprite_height/2,this_text);
}else{
	draw_text_transformed(x - sprite_width,y + sprite_height/2,this_text,1,1,90);
}
