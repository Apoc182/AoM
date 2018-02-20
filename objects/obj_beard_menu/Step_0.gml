//If fading occuring, cannot do anything
if(instance_exists(obj_fader))exit;

if(!instance_exists(box)){
	if(confirm){
		//Clears the current default status.
		ds_grid_set(global.all_beard_properties, beard_index, BRD_CURRENT, false);
	
		//Sets the new beard.
		ds_grid_set(global.all_beard_properties, highlighted_beard + scroller, BRD_CURRENT, true);
	
		//Save changes
		scr_save_beard_grid();
	
		//Apply perks
		scr_set_game_metrics();
	}
	//Return to menu
	scr_fader(rm_title);
	exit;
}




//Manipulate dynamic beards.
if(blinking){
	
	frame_count++;
	if(frame_count >= room_speed * .2){
		frame_count = 0;
		blinking = false;
	}

}


if(box.open){
	//For the menu
	if((keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))){
		highlighted_beard -= 1;
	
		if(highlighted_beard < 0){
			highlighted_beard = 0;
			if(highlighted_beard < scroller){
				scroller--;
				audio_play_sound(snd_selected, 0, false);
			}
		}
	
	}

	if((keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))){
		highlighted_beard += 1;
	}
	
		



	//Don't let the beard selector off screen
	if(highlighted_beard > menu_max_list - 1){
	
		scroller++;
		highlighted_beard--;
		
		if(scroller + highlighted_beard > ds_grid_width(global.all_beard_properties) - 1){
		
			scroller--;
		
		}else{
			audio_play_sound(snd_selected, 0, false);
		}

	}	


	//Other times to play sound
	if(previous_highlighted != highlighted_beard) audio_play_sound(snd_selected, 0, false);



	if(keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)){
	
		if(!(highlighted_beard + scroller >= scr_number_beards_unlocked())){
		
			//Plays confirmation sound
			audio_play_sound(snd_confirm, 0, false);
		
			confirm = true;
			box.box_out = true;
		} else{
	
			audio_play_sound(snd_denied, 0, false);
	
		}
	}


	if(keyboard_check_pressed(vk_escape)) box.box_out = true;
}
previous_highlighted = highlighted_beard;