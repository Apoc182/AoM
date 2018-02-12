//Loads the unlocked and current attributes of the beard grid.

ini_open("save.ini");

var high_score = ini_read_real("Save", "local_max", 0);
show_message(high_score);
current = ds_list_create();
ds_list_read(current, ini_read_string("Save", "current", ""));
show_message(ds_list_find_value(current, 0));



for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){

	var score_unlock = ds_grid_get(global.all_beard_properties, i, BRD_SCORE_TO_UNLOCK)
	
	if(score_unlock <= high_score){
	
		ds_grid_set(global.all_beard_properties, i, BRD_UNLOCKED , true);
	
	}
	
	if(ds_list_find_value(current, 0) == ds_grid_get(global.all_beard_properties, i, BRD_SPRITE_NAME)){
		
		for(j = 0; j < global.all_beard_properties; i++){
			ds_grid_set(global.all_beard_properties, j, BRD_CURRENT , false);
		}
		ds_grid_set(global.all_beard_properties, i, BRD_CURRENT , true);
	
	}else{
	
		ds_grid_set(global.all_beard_properties, 0, BRD_CURRENT , true);
	
	}
	

}




ini_close();
