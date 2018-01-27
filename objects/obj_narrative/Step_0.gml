if (global.kirsten_ready){
	if(keyboard_check_released(vk_space)) hold_block = 1;
	if (characters < message_length) { //if current character count is less than the amount in current message* 
		hold = keyboard_check(vk_space); //hold is true or false if we hold 'Z' or not
		characters += increase + (2  * hold * hold_block); //increase speed based on hold
		message_draw = string_copy(message[message_current], 0, characters); //copy string to current character
		audio_play_sound(snd_typing, 0, false);
		with (obj_kirsten_side) image_speed = 2;
	} 
	else { //if current character is more than the amount in the current message
		with (obj_kirsten_side) {
			image_speed = 0;
			image_index = 0;
		}
		if (keyboard_check_pressed(vk_space)) { //if we press space...
		    if (message_current < message_end) { //if there are more messages left to show (0 -> 6, in our case)
		        message_current += 1; //increase the message by 1
		        message_length = string_length(message[message_current]);  //get the new character length for message
		        characters = 0; //set the characters back to 0
		        message_draw = ""; //clear the drawn text
				hold_block = 0;
		    }

		}
	}
}


if(keyboard_check_pressed(vk_space) && message_current == message_end &&
   string_length(message_draw) == string_length(message[message_current])){
	room_goto(dream);
}


if(keyboard_check_pressed(vk_escape)){
	room_goto(dream);
	audio_sound_gain(snd_lullaby, 0, 2000);
	audio_sound_gain(snd_title, .25, 2000);
	keyboard_clear(vk_escape);

}