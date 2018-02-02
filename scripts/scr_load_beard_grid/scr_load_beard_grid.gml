//Saves the state of the beard grid

ini_open("beards.ini");

global.all_beard_properties = ds_grid_create(BRD_NUMBER_OF_BEARDS, BRD_MAX_BEARD_PROPERTIES);

var ds_maps = [];
var grid;

ds_grid_read(global.all_beard_properties, ini_read_string("GameData", "all_beard_properties", ""));


for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){

	ds_maps[i] = ds_map_create();
	ds_map_read(ds_maps[i], ini_read_string("GameData", "multipliers" + string(i), ""))
	ds_grid_set(global.all_beard_properties, i, BRD_MULTIPLIERS, ds_map_create());
	ds_map_copy(ds_grid_get(global.all_beard_properties, i, BRD_MULTIPLIERS), ds_maps[i]);
	ds_map_destroy(ds_maps[i]);

	
}


ini_close();

