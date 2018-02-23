//fade in or fade out
fade_alpha = clamp(fade_alpha + (fade_state * fade_speed),0,1);

//if fade out complete, go to target room and start fade in
if(fade_alpha == 1){
	room_goto(target);
	fade_state = -1;
}

//if fade in complete, destroy object
if(fade_alpha == 0) && (fade_state == -1){
	instance_destroy();
}

//draw rectangle over the screen
draw_set_color(fade_color);
draw_set_alpha(fade_alpha);
draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0],	0);
draw_set_alpha(1);