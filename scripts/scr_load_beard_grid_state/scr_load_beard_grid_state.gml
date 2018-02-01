var temp_grid = ds_grid_create(BRD_NUMBER_OF_BEARDS, BRD_MAX_BEARD_PROPERTIES);
var ds_maps = [];

ds_grid_read(temp_grid, ini_read_string("GameData", "beard_settings", "unknown"));

for(i = 0; i < ds_grid_width(temp_grid); i++){

	ds_maps[i] = ds_map_read(ds_grid_get(temp_grid, i, BRD_MULTIPLIERS));
	ds_grid_set(temp_beards, i, BRD_MULTIPLIERS, ds_maps[i]);

}

return temp_grid;