//For the menu

mover -= max(keyboard_check_pressed(ord("A")), keyboard_check_pressed(vk_left), 0);
mover += max(keyboard_check_pressed(ord("D")), keyboard_check_pressed(vk_right), 0);

if(mover < 0){
	mover = ds_list_size(global.unlocked_beards) - 1;
}


if(mover > ds_list_size(global.unlocked_beards) - 1){
	mover = 0;
}


confirm = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);


ini_open("Save.ini");
if(confirm){
	ds_list_clear(global.beard_setting);
	ds_list_add(global.beard_setting, ds_list_find_value(global.unlocked_beards, mover));
	ini_open("beards.ini");
	write_to_ini = ds_list_write(global.beard_setting);
	ini_write_string("GameData", "beard_setting", write_to_ini);
	ini_close();	
	room_goto_previous();
	
}

