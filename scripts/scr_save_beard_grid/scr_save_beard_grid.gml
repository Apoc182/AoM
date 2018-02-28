///scr_save_beard_grid
//Saves the state of the beard grid

ini_open("save.ini");

var to_add = ds_list_create();

var used_map = ds_map_create();

for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){
	
	//Save used status
	if(ds_grid_get(global.all_beard_properties, i, BRD_USED)){
	
		ds_map_add(used_map, ds_grid_get(global.all_beard_properties, i, BRD_BEARD_NAME), true);
	
	}
	
	if(ds_grid_get(global.all_beard_properties, i, BRD_CURRENT)){
		ds_list_add(to_add, ds_grid_get(global.all_beard_properties, i, BRD_SPRITE_NAME));
	}
	
}


ini_write_string("Save", "used", ds_map_write(used_map));
ini_write_string("Save", "current", ds_list_write(to_add));
ds_list_destroy(to_add);


ini_close();