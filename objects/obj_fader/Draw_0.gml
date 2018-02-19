fade_alpha = clamp(fade_alpha + (fade_state * fade_speed),0,1);

if(fade_alpha == 1){
	scr_restart();
	room_goto(target);
	fade_state = -1;
}

if(fade_alpha == 0) && (fade_state == -1){
	instance_destroy();
}

draw_set_color(fade_color);
draw_set_alpha(fade_alpha);
draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0],	0);
draw_set_alpha(1);