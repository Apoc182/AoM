//For the menu

mover -= max(keyboard_check_pressed(ord("A")), keyboard_check_pressed(vk_left), 0);
mover += max(keyboard_check_pressed(ord("D")), keyboard_check_pressed(vk_right), 0);

if(mover < 0){
	mover = array_length_1d(menu) - 1;
}

if(mover > array_length_1d(menu) - 1){
	mover = 0;
}

confirm = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);



//This is where we do the next thingio

//Set the beards
ini_open("Save.ini");
if(confirm){

	switch(mover){
		case 0:			
			ini_write_real("Save", "Current_Beard", 0);
			break;			
		case 1:
			ini_write_real("Save", "Current_Beard", 1);
			break;
		case 2:
			ini_write_real("Save", "Current_Beard", 2);
			break;
		case 3:
			ini_write_real("Save", "Current_Beard", 3);
			break;
		default:
			break;
	
	}
	global.beard_setting = ini_read_real("Save", "Current_Beard", 0);
	
	ini_close();
	room_goto(rm_title);
	
}

