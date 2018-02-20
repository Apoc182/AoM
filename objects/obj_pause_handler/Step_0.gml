if(!instance_exists(box)){
	if(resume){
		instance_activate_all();
		instance_destroy();
		layer_background_change(layer_background_get_id(layer_get_id("pause_screen")), spr_blank);
		layer_background_change(layer_background_get_id(layer_get_id("pause_overlay")), spr_blank);
		layer_hspeed(layer_get_id("bg1"),0.5);
		layer_hspeed(layer_get_id("bg2"),1);
		layer_hspeed(layer_get_id("bg3"),2);
		if(file_exists("pause.png")){
			file_delete("pause.png");
		}

	}
	if(restart)	scr_fader(dream, c_white);
	if(title) scr_fader(rm_title);
	exit;
}



////Menu selection
if(box.open){
	
	
	mover += keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
	mover -= keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
	if(previous_mover != mover) audio_play_sound(snd_selected, 0, false);

	if(mover < 0){
		mover = array_length_1d(menu_items) - 1;
	}

	if(mover > array_length_1d(menu_items) - 1){
		mover = 0;
	}

	//Confirmation
	confirm = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
	
	if(confirm){
		
		audio_play_sound(snd_confirm, 0, false);
		box.box_out = true;
		switch(mover){
		
			case 0:
				resume = true;
				break;
			case 1:
				restart = true;
				break;
			case 2:
				title = true;
				break;
				
			default:
				break;
		}
	}
	
	////Checks for ESC key and opens and closed the menu appropriately
	if(keyboard_check_pressed(vk_escape)){
		box.box_out = true;
		resume = true;
	}

}

previous_mover = mover;