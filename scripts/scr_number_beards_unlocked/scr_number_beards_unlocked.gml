var counter = 0;

for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){

	if(ds_grid_get(global.all_beard_properties, i, BRD_UNLOCKED)){
	
		counter++;
	
	}

}


return counter;