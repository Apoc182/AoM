/// @description Insert description here
// You can write your code in this editor

user_name = "";
keyboard_string = "";


//If called from anywhere but the splash screen.



ini_open("Save.ini");

//If there is a username already, it will just apply this and move on
//NOTE: In the menu, we erase this key when we select 'Change Name', bipassing this.
if(ini_key_exists("Save", "Name") && !global.username_exists){
	global.user_name = ini_read_string("Save", "Name", "No name");
	ini_close();
	if(global.user_name == "Thor" || global.user_name == "thor" || global.user_name == "THOR"){
		global.is_thor = true;
	}
	
	global.username_exists = true;
	room_goto(rm_title);
	
}

box = instance_create_depth((SCREEN_WIDTH)/2, (SCREEN_HEIGHT)/2, 50, obj_animated_box);
box.box_in = true;
box.y2_open = GRID_SIZE * 14.5