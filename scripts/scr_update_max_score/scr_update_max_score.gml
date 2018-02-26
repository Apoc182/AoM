
//Save unlocked beard


ini_open("Save.ini");

if(ini_read_real("Save", "local_max", 0) < global.max_score){
	ini_write_real("Save", "local_max", global.max_score);
}

ini_close();