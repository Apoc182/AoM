var index = scr_get_current_beard("index");

var multipliers = ds_grid_get(global.all_beard_properties, index, BRD_MULTIPLIERS);


global.player_lives_multiplier = ds_map_find_value(multipliers, "lives");

//global.player_lives_multiplier = multipliers[? "lives"];

//Add the other multipliers here...
