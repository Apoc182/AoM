//For the menu
move = 0;

move -= max(keyboard_check_pressed(ord("W")), keyboard_check_pressed(vk_up), 0);
move += max(keyboard_check_pressed(ord("S")), keyboard_check_pressed(vk_down), 0);

//If fading occuring, freeze menu.

fading = alpha_variance != 0 || alpha_variance_in != 0;

if(fading) move = 0;



if (move != 0){
	mpos += move;
	if (mpos < 0) {
		mpos = array_length_1d(menu) -1;
	}
	if (mpos > array_length_1d(menu) -1) {
		mpos = 0;
	}
	audio_play_sound(snd_selected, 0, false);
}

push = max(keyboard_check_pressed(vk_enter), keyboard_check_pressed(vk_space), 0);

//For using left and right to control toggle items
if(!push && options && (mpos == 2 || mpos == 3)){

	push = max(keyboard_check_pressed(vk_left), keyboard_check_pressed(vk_right), keyboard_check_pressed(ord("A")), keyboard_check_pressed(ord("D")), 0);

}


if (push && !fading && !options){
	
	audio_play_sound(snd_confirm, 0, false);
	switch (mpos){
		
		case 0: {					
			//Goto the room
			draw_fader = true;
			break;
		}
		
		case 1:{
			menu = ["Change Name", "Change Beard", "Full Screen", "Tutorial"];
			mpos = 0;
			push = false;
			options = true;
			break;
		}
		
		case 2:{		
			game_end();
			break;
		}

		
		default: break;
	
	}
} //End menu stuff


if (push && !fading && options){

	audio_play_sound(snd_confirm, 0, false);
	switch (mpos){
		
		case 0: {					
			room_goto(rm_enter_name);
			break;
		}
		
		case 1:{
			room_goto(rm_beard_select);
			break;					  
		}							  
									  
		case 2:{					  
			if(!window_get_fullscreen()){			  
				window_set_fullscreen(true);
			}else{		
				window_set_fullscreen(false);
			}
			audio_play_sound(snd_selected, 0, false);
			scr_save_screen_size();
			break;
		}
		
		case 3:{
			global.tutorial_on = !global.tutorial_on;
			audio_play_sound(snd_selected, 0, false);
			break;
		}
		
		
		default: break;
	
	}

} //End menu stuff



if(draw_fader){
	
	alpha_variance += .025;
	
	if(alpha_variance == 1){
		keyboard_clear(vk_space);
		room_goto(rm_intro);
	}
	
}



//Fade
if(alpha_variance_in > 0){
	alpha_variance_in -= .025;
}


//Esc takes to exit
if(keyboard_check_pressed(vk_escape) && !options && !fading){
	mpos = 2; 
	audio_play_sound(snd_back, 0, false);
}

//Esc takes to exit
if(keyboard_check_pressed(vk_escape) && options){
	//Menu options
	scr_save_ini("Save", "tutorial_on", global.tutorial_on);
	menu = ["Start", "Options", "Exit"];
	mpos = 0;
	options = false;
	audio_play_sound(snd_back, 0, false);
}
