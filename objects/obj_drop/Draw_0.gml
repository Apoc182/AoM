// draw sentences
draw_set_color(this_colour);
draw_text_transformed(x - sprite_width,y + sprite_height/2,this_text,1,1,90);

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