//For the menu




if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)){
	mover -= 1;
}

if(keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)){
	mover += 1;
}





if(mover < 0){

	mover = 0;

}

if(mover == scr_number_beards_unlocked()){

	mover = scr_number_beards_unlocked() - 1;

}




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