if(!instance_exists(box)){
	room_goto(rm_title);
	exit;
}

if(keyboard_check(vk_anykey) && !keyboard_check(vk_enter) && !keyboard_check(vk_backspace) && 
   !keyboard_check(vk_space) && !keyboard_check(vk_escape)){

	if(string_length(user_name) < 12){
		user_name += keyboard_string;
	}
	keyboard_string = "";

}

if ((keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) && user_name != "" && box.open){
	audio_play_sound(snd_confirm, 0, false);
	global.user_name = user_name;
	ini_write_string("Save", "Name", global.user_name);
	if(global.user_name == "Thor" || global.user_name == "thor" || global.user_name == "THOR"){
		global.is_thor = true;
	}else{
		global.is_thor = false;
	}
	ini_close();
	global.username_exists = true;
	box.box_out = true;
	
}

if (keyboard_check_pressed(vk_backspace)){
	user_name = string_delete(user_name, string_length(user_name), 1);
}

if(keyboard_check(vk_escape) && ini_key_exists("Save", "Name")){
	box.box_out = true;
}

if ((keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) && user_name == "" && box.open){

	audio_play_sound(snd_denied, 0, false);
	
}