///Returns the current beard.
///@arg0 propertyRequired

//Pass the string "index" to return the index

for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){

	var current = ds_grid_get(global.all_beard_properties, i, BRD_CURRENT);
	
	if(current){
		if(argument0 == "index") return i;
		return ds_grid_get(global.all_beard_properties, i, argument0);
	}

}