if(fade_in && alpha_variance < 1){
	alpha_variance += .01;
}

if(fade_out && alpha_variance > 0){
	alpha_variance -= .01;
}

if(keyboard_check_pressed(vk_space) && space_can_progress){
	fade_in = false;
	fade_out = true;
	space_can_progress = false;
}

if(alpha_variance == 0){
	current_text_pos++;
	if(current_text_pos == 6){
		global.tutorial_on = false;
		room_restart();
	}
	fade_out = false;
	fade_in = true;
	arrow_tip_x = arrow_pos_array[current_text_pos, 0];
	arrow_tip_y = arrow_pos_array[current_text_pos, 1];
}

if(alpha_variance == 1 && !space_can_progress){
	space_can_progress = true;

}

if(current_text_pos == 2 && alpha_variance == 0){
	rotation_from_right_counterclockwise = 65;
}
