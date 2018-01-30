
//Checks for ESC key and opens and closed the menu appropriately
if(keyboard_check_pressed(vk_escape)){
	
	if(paused && box.open){
		box.box_in = false;
		box.box_out = true;
		quitting = true;
	
	}
	
	if(!paused){
		instance_deactivate_all(true);
		paused = true;
		box.visible = true;
		instance_activate_object(box);
		box.box_in = true;
	}
	
}

if(quitting && box.closed){
	box.x_open = false;
	box.y_open = false;
	box.x_closed = false;
	box.y_closed = false;
	box.visible = false;
	paused = false;
	box.box_out = false;
	quitting = false;
	instance_activate_all();
}




//Menu selection
if(paused && box.open){
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
				box.box_in = false;
				box.box_out = true;
				quitting = true;
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
