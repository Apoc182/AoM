//For the menu

mover -= max(keyboard_check_pressed(ord("A")), keyboard_check_pressed(vk_left), 0);
mover += max(keyboard_check_pressed(ord("D")), keyboard_check_pressed(vk_right), 0);

if(mover < 0){
	mover = ds_grid_width(global.all_beard_properties) - 1;
}


if(mover > ds_grid_width(global.all_beard_properties) - 1){
	mover = 0;
}


confirm = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);



if(confirm){
	//Clears the current default status.
	ds_grid_set(global.all_beard_properties, beard_index, BRD_CURRENT, false);
	
	//Sets the new beard.
	ds_grid_set(global.all_beard_properties, mover, BRD_CURRENT, true);
	
	//Save changes
	scr_save_beard_grid_state();
	
	//Return to menu
	room_goto_previous();
	
}

if(keyboard_check_pressed(vk_escape)) room_goto_previous();