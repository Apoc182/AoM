//For the menu




if(keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left)){
	mover -= 1;
	left = true;
}

if(keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right)){
	mover += 1;
	left = false;
}



//So we never leave the grid bounds
do{
	if(mover < 0){
		mover = ds_grid_width(global.all_beard_properties) - 1;
	}


	if(mover > ds_grid_width(global.all_beard_properties) - 1){
		mover = 0;
	}

	//So we know if it's unlocked or not before we go to it.
	unlocked = ds_grid_get(global.all_beard_properties, mover, BRD_UNLOCKED)
	
	if(!unlocked && left) mover--;
	if(!unlocked && !left) mover++;
	
}
until unlocked;







confirm = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);



if(confirm){
	//Clears the current default status.
	ds_grid_set(global.all_beard_properties, beard_index, BRD_CURRENT, false);
	
	//Sets the new beard.
	ds_grid_set(global.all_beard_properties, mover, BRD_CURRENT, true);
	
	//Save changes
	scr_save_beard_grid();
	
	//Apply perks
	scr_set_game_metrics();
	
	//Return to menu
	room_goto_previous();
	
}

if(keyboard_check_pressed(vk_escape)) room_goto_previous();