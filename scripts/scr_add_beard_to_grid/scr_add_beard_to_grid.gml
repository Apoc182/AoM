///@arg0 beard_sprite
///@arg1 beard_name
///@arg2 unlocked
///@arg3 current
///@arg4 beard_score
///@arg5 multiplier(array)

//Set the first five properties: sprite, name and score to unlock.
ds_grid_set(global.all_beard_properties, counter, 0, argument0);
ds_grid_set(global.all_beard_properties, counter, 1, argument1);
ds_grid_set(global.all_beard_properties, counter, 2, argument2);
ds_grid_set(global.all_beard_properties, counter, 3, argument3);
ds_grid_set(global.all_beard_properties, counter, 4, argument4);

//Create a map of multiplier name to its effect
var multipliers = ds_map_create();
ds_map_add(multipliers, argument5[0], argument5[1]);
ds_map_add(multipliers, argument6[0], argument6[1]);
ds_map_add(multipliers, argument7[0], argument7[1]);
ds_map_add(multipliers, argument8[0], argument8[1]);
ds_map_add(multipliers, argument9[0], argument9[1]);

//Store it in the grid.
ds_grid_set(global.all_beard_properties, counter, 5, ds_map_create());
ds_grid_set(global.all_beard_properties, counter, 5, multipliers);

//Increment counter for next cycle
counter++;
