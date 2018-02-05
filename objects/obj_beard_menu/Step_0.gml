//Manipulate dynamic beards.
if(blinking){
	
	frame_count++;
	if(frame_count >= room_speed * .2){
		frame_count = 0;
		blinking = false;
	}

}



//For the menu
if((keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)) && box.open && !confirm){
	highlighted_beard -= 1;
	
	if(highlighted_beard < 0){
		highlighted_beard = 0;
		if(highlighted_beard < scroller) scroller--;
	}
	
}

if((keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)) && box.open && !confirm){
	highlighted_beard += 1;
	
	if(highlighted_beard > menu_max_list - 1){
	
		scroller++;
		highlighted_beard--;
		
		if(scroller + highlighted_beard > ds_grid_width(global.all_beard_properties) - 1){
		
			scroller--;
		
		}

	
	}
		
}













if((keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) && box.open){
	confirm = true;
	box.box_in = false;
	box.box_out = true;
}

if(confirm && box.closed){
	//Clears the current default status.
	ds_grid_set(global.all_beard_properties, beard_index, BRD_CURRENT, false);
	
	//Sets the new beard.
	ds_grid_set(global.all_beard_properties, highlighted_beard + scroller, BRD_CURRENT, true);
	
	//Save changes
	scr_save_beard_grid();
	
	//Apply perks
	scr_set_game_metrics();
	
	//Return to menu
	room_goto_previous();	
}

if(keyboard_check_pressed(vk_escape)) room_goto_previous();