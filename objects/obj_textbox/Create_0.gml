/// @description Insert description here
// You can write your code in this editor

global.user_name = "";
keyboard_string = "";

//Initialise fonts
draw_set_font(fnt_main);


//This is a boolean indicating whether or not the username is Thor or thor.
global.is_thor = false


//If theis is the first time the game is ran, it will come here and apply the default beard.
if(!file_exists("Save.ini")){
	ini_open("Save.ini");
	ini_write_string("Save", "Current_Beard", 0);
	scr_initialise_beards();
	global.beard_setting = 0;
}else{
	ini_open("Save.ini");
}

global.beard_setting = ini_read_real("Save", "Current_Beard", 0);

//If there is a username already, it will just apply this and move on
//NOTE: In the menu, we erase this key when we select 'Change Name', bipassing this.
if(ini_key_exists("Save", "Name")){
	global.user_name = ini_read_string("Save", "Name", "No name");
	ini_close();
	if(global.user_name == "Thor" || global.user_name == "thor"){
		global.is_thor = true;
	}
	room_goto(rm_title);
}


