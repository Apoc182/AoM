///scr_save_beard_grid
//Saves the state of the beard grid

ini_open("save.ini");

var to_add = ds_list_create();

for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){

	if(ds_grid_get(global.all_beard_properties, i, BRD_CURRENT)){
		ds_list_add(to_add, ds_grid_get(global.all_beard_properties, i, BRD_SPRITE_NAME));
		show_message(ds_list_find_value(to_add, 0));
	}
	
}

ini_write_string("Save", "current", ds_list_write(to_add));
ini_close();