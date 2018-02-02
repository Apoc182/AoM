/// @description Insert description here
// You can write your code in this editor


alarm[1] = room_speed * 3;
image_index = 0;
image_speed = 0;

//The maximum amount of lives
max_lives_multiplier = ds_map_find_value(ds_grid_get(global.all_beard_properties, scr_get_current_beard("index"), BRD_MULTIPLIERS), "lives")