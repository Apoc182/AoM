///scr_save_beard_grid(a cunt)
//Saves the state of the beard grid

ini_open("beards.ini");

var ds_map_strings = [];
var grid = "";

grid = ds_grid_write(global.all_beard_properties);
ini_write_string("GameData", "all_beard_properties", grid);

for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){

	ds_map_strings[i] = ds_map_write(ds_grid_get(global.all_beard_properties, i, BRD_MULTIPLIERS));
	ini_write_string("GameData", "multipliers" + string(i), ds_map_strings[i]);
	
}


ini_close();