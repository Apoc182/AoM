//For the menu
move = 0;

move -= max(keyboard_check_pressed(ord("W")), keyboard_check_pressed(vk_up), 0);
move += max(keyboard_check_pressed(ord("S")), keyboard_check_pressed(vk_down), 0);

if (move != 0){
	mpos += move;
	if (mpos < 0) {
		mpos = array_length_1d(menu) -1;
	}
	if (mpos > array_length_1d(menu) -1) {
		mpos = 0;
	}
	audio_play_sound(snd_quick_cunt, 0, false);
}


push = max(keyboard_check_pressed(vk_enter), keyboard_check_pressed(vk_space), 0);
if (push){
	ini_open("Save.ini");
	audio_play_sound(snd_calledMeACunt, 0, false);
	switch (mpos){
		
		case 0: {					
			//Goto the room
			draw_fader = true;
			break;
		}
		
		case 1:{
			room_goto(rm_beard_select);
			break;
		}
		
		case 2:{
			ini_key_delete("Save", "Name");			
			room_goto(rm_enter_name);
			break;
		}
		
		case 3: {
			game_end();
			break;
		}
		
		default: break;
	
	}
	ini_close();
} //End menu stuff

if(draw_fader){
	
	alpha_variance += .01;
	
	if(alpha_variance == 1){
		keyboard_clear(vk_space);
		room_goto(rm_intro);
	}
	
}



//Fade
if(alpha_variance_in > 0){
	alpha_variance_in -= .01;
}