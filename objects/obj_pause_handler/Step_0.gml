
//Checks for ESC key and opens and closed the menu appropriately
if(keyboard_check_pressed(vk_escape)){
	if(!paused){
		instance_deactivate_all(true);
		paused = true;
	}else{
		instance_activate_all();
		paused = false;
	}
}


//Menu selection
if(paused){
	mover += keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
	mover -= keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);

	if(mover < 0){
		mover = array_length_1d(menu_items) - 1
	}

	if(mover > array_length_1d(menu_items) - 1){
		mover = 0;
	}

	//Confirmation

	confirm = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
	
	if(confirm){
		switch(mover){
		
			case 0:
				keyboard_clear(vk_space);
				instance_activate_all();
				paused = false;
				break;
				
			case 1:
				scr_restart();
				room_restart();
				break;
				
			case 2:
				scr_restart();
				room_goto(rm_title);
				break;
				
			default:
				break;
		
		}
	}








}
