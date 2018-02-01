var ds_map = ds_grid_get(global.all_beard_properties, 0, BRD_MULTIPLIERS);

global.player_lives_multiplier = ds_map_find_value(ds_map, "lives");

global.player_lives += global.player_lives_multiplier;