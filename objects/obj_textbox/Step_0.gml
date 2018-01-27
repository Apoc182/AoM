/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_anykey) && !keyboard_check(vk_enter) && !keyboard_check(vk_backspace)){

	if(string_length(global.user_name) < 12){
		global.user_name += keyboard_string;
	}
	keyboard_string = "";

}

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)){
	ini_write_string("Save", "Name", global.user_name);
	ini_close();
	if(global.user_name == "Thor" || global.user_name == "thor" || global.user_name == "THOR"){
		global.is_thor = true;
	}
	ini_close();
	room_goto(rm_title);
	
}

if (keyboard_check_pressed(vk_backspace)){
	global.user_name = string_delete(global.user_name, string_length(global.user_name), 1);
}