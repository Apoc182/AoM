/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space)){
	scr_restart();
	room_goto(dream);
}

if(keyboard_check_pressed(vk_escape)){
	scr_restart();
	room_goto(rm_title);

}