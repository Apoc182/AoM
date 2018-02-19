/// @description Insert description here
// You can write your code in this editor

draw_set_color(this_colour);
if(drop_contact){
	draw_text(x - sprite_width,y + sprite_height/2,this_text);
}else{
	if(ground_contact){
		draw_self();
	}else{
		draw_text_transformed(x - sprite_width,y + sprite_height/2,this_text,1,1,90);
	}
}

//Lightning
if(is_thunder){
	lightning_frame = !lightning_frame;
	if(counter >= thunder_timer) is_thunder = false;
	counter++;
	if(lightning_frame){
		draw_set_colour(c_aqua);
		draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0],	0);
	}
}