//For the menu

mover -= max(keyboard_check_pressed(ord("A")), keyboard_check_pressed(vk_left), 0);
mover += max(keyboard_check_pressed(ord("D")), keyboard_check_pressed(vk_right), 0);

if(mover < 0){
	mover = array_length_1d(global.beards_to_choose) - 1;
}


if(mover > array_length_1d(global.beards_to_choose) - 1){
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
			
		case 4:			
			ini_write_real("Save", "Current_Beard", 4);
			break;			
		case 5:
			ini_write_real("Save", "Current_Beard", 5);
			break;
		case 6:
			ini_write_real("Save", "Current_Beard", 6);
			break;
		case 7:
			ini_write_real("Save", "Current_Beard", 7);
			break;
		case 8:			
			ini_write_real("Save", "Current_Beard", 8);
			break;			
		case 9:
			ini_write_real("Save", "Current_Beard", 9);
			break;
		default:
			break;
	
	}
	global.beard_setting = ini_read_real("Save", "Current_Beard", 0);
	
	ini_close();
	room_goto(rm_title);
	
}

