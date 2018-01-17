//Need to pass in the number of the beard to unlock

ini_open("Save.ini");
switch(argument0){

	case global.unlock_black_beard:
		ini_write_real("Save", "spr_beard_black", 1);
		break;
		
	case global.unlock_chops:
		ini_write_real("Save", "spr_beard_chops", 1);
		break;
		
	case global.unlock_abe:
		ini_write_real("Save", "spr_abe", 1);
		break;
		
	case global.unlock_chaplin:
		ini_write_real("Save", "spr_chaplin", 1);
		break;
		
	case global.unlock_chops_2:
		ini_write_real("Save", "spr_chops_2", 1);
		break;
		
	case global.unlock_blonde:
		ini_write_real("Save", "spr_blonde", 1);
		break;
		
	case global.unlock_grey:
		ini_write_real("Save", "spr_grey", 1);
		break;
		
	case global.unlock_white:
		ini_write_real("Save", "spr_white", 1);
		break;
		
	case global.unlock_van_dyke:
		ini_write_real("Save", "spr_van_dyke", 1);
		break;
	
	default:
		break;
		
}

ini_close();


