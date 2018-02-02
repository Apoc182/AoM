///@arg0 beard_sprite
///@arg1 beard_name
///@arg2 beard_desc
///@arg3 unlocked
///@arg4 current
///@arg5 beard_score
///@arg6 umbrella_damage
///@arg7 speed_multiplier
///@arg8 lives_multiplier
///@arg9 score_multiplier
///@arg10 damage_multiplier
///@arg11 drop_ratio


//Set the first five properties: sprite, name and score to unlock.
ds_grid_set(global.all_beard_properties, counter, 0, argument0);
ds_grid_set(global.all_beard_properties, counter, 1, argument1);
ds_grid_set(global.all_beard_properties, counter, 2, argument2);
ds_grid_set(global.all_beard_properties, counter, 3, argument3);
ds_grid_set(global.all_beard_properties, counter, 4, argument4);
ds_grid_set(global.all_beard_properties, counter, 5, argument5);

//Create a map of multiplier name to its effect
var multipliers = ds_map_create();
ds_map_add(multipliers, argument6[0], argument6[1]);
ds_map_add(multipliers, argument7[0], argument7[1]);
ds_map_add(multipliers, argument8[0], argument8[1]);
ds_map_add(multipliers, argument9[0], argument9[1]);
ds_map_add(multipliers, argument10[0], argument10[1]);
ds_map_add(multipliers, argument11[0], argument11[1]);

//Store it in the grid.
ds_grid_set(global.all_beard_properties, counter, 6, ds_map_create());
ds_grid_set(global.all_beard_properties, counter, 6, multipliers);

//Increment counter for next cycle
counter++;
