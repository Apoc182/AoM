//Loads the unlocked and current attributes of the beard grid.

ini_open("beards.ini");

var current_map = ds_map_create();
var unlocked_map = ds_map_create();

ds_map_read(unlocked_map, ini_read_string("GameData", "unlocked", ""));
ds_map_read(current_map, ini_read_string("GameData", "current", ""));


for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){

	ds_grid_set(global.all_beard_properties, i, BRD_CURRENT, ds_map_find_value(current_map, ds_grid_get(global.all_beard_properties, i, BRD_SPRITE_NAME)));
	ds_grid_set(global.all_beard_properties, i, BRD_UNLOCKED, ds_map_find_value(unlocked_map, ds_grid_get(global.all_beard_properties, i, BRD_SPRITE_NAME)))
	
}

ds_map_destroy(current_map);
ds_map_destroy(unlocked_map);

ini_close();

