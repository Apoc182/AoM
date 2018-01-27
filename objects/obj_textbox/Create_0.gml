/// @description Insert description here
// You can write your code in this editor

global.user_name = "";
keyboard_string = "";




//If theis is the first time the game is ran, it will come here and apply the default beard.
if(!file_exists("Save.ini")){
	ini_open("Save.ini");
	ini_write_string("Save", "Current_Beard", 0);
	scr_initialise_beards();
	global.beard_setting = 0;
	global.tutorial_on = true;
}else{
	ini_open("Save.ini");
}

global.beard_setting = ini_read_real("Save", "Current_Beard", 0);

//If there is a username already, it will just apply this and move on
//NOTE: In the menu, we erase this key when we select 'Change Name', bipassing this.
if(ini_key_exists("Save", "Name")){
	global.user_name = ini_read_string("Save", "Name", "No name");
	ini_close();
	if(global.user_name == "Thor" || global.user_name == "thor" || global.user_name == "THOR"){
		global.is_thor = true;
	}
	room_goto(rm_title);
}

ini_close();



