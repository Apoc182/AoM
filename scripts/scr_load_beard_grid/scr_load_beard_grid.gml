//Saves the state of the beard grid

ini_open("beards.ini");

var ds_maps = [];
var grid;

grid = ds_grid_create(BRD_NUMBER_OF_BEARDS, BRD_MAX_BEARD_PROPERTIES);
ds_grid_read(grid, ini_read_string("GameData", "all_beard_properties", ""));


for(i = 0; i < ds_grid_width(grid); i++){

	ds_maps[i] = ds_map_create();
	ds_map_read(ds_maps[i], ini_read_string("GameData", "multipliers" + string(i), ""))
	ds_grid_set(grid, i, BRD_MULTIPLIERS, ds_maps[i]);
	ds_map_destroy(ds_maps[i]);
	
}


return grid;

ini_close();