///scr_save_beard_grid(a cunt)
//Saves the state of the beard grid

ini_open("beards.ini");

var unlocked_map = ds_map_create();
var current_map = ds_map_create();

for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){

	ds_map_add(unlocked_map, ds_grid_get(global.all_beard_properties, i, BRD_SPRITE_NAME) , ds_grid_get(global.all_beard_properties, i, BRD_UNLOCKED))
	ds_map_add(current_map, ds_grid_get(global.all_beard_properties, i, BRD_SPRITE_NAME) , ds_grid_get(global.all_beard_properties, i, BRD_CURRENT))

}

ini_write_string("GameData", "unlocked", ds_map_write(unlocked_map));
ini_write_string("GameData", "current", ds_map_write(current_map));

ds_map_destroy(unlocked_map);
ds_map_destroy(current_map);

ini_close();