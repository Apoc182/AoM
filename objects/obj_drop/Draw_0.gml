/// @description Insert description here
// You can write your code in this editor

draw_set_color(this_colour);
if(drop_contact){
	draw_text(x - sprite_width,y + sprite_height/2,this_text);
}else{
	draw_text_transformed(x - sprite_width,y + sprite_height/2,this_text,1,1,90);
}

//Lightning
if(is_thunder){
	draw_sprite(spr_lightning, lightning_frame, window_get_width()/2, window_get_height()/2);
	lightning_frame = !lightning_frame;
	if(counter >= thunder_timer) is_thunder = false;
	counter++;
}
