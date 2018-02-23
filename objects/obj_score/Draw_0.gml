//draw score
draw_set_alpha(alpha);
draw_set_color(this_colour);
draw_text(x,y,scr);

//draw lightning effect
if(global.is_thor && lightning){
	lightning_frame = !lightning_frame;
	if(lightning_frame){
		draw_set_colour(c_aqua);
		draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0],	0);
	}
}