//Loads the unlocked and current attributes of the beard grid.

ini_open("save.ini");

var high_score = ini_read_real("Save", "local_max", 0);
var current = ds_list_create();
ds_list_read(current, ini_read_string("Save", "current", ""));





for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){

	var score_unlock = ds_grid_get(global.all_beard_properties, i, BRD_SCORE_TO_UNLOCK)
	
	if(score_unlock <= high_score){
	
		ds_grid_set(global.all_beard_properties, i, BRD_UNLOCKED , true);
	
	}
	
	if(ds_list_find_value(current, 0) == ds_grid_get(global.all_beard_properties, i, BRD_SPRITE_NAME)){
		
		for(j = 0; j < ds_grid_width(global.all_beard_properties); j++){
			ds_grid_set(global.all_beard_properties, j, BRD_CURRENT , false);
		}

		ds_grid_set(global.all_beard_properties, i, BRD_CURRENT , true);
	
	}
	

	

}

//Test to make sure one is set to current and if there is none, set the default.

var one_true = false;

for(i = 0; i < ds_grid_width(global.all_beard_properties); i++){

	if(ds_grid_get(global.all_beard_properties, i, BRD_CURRENT)){
		one_true = true;
		break;
	}
}

if(!one_true){
	ds_grid_set(global.all_beard_properties, 0, BRD_CURRENT , true);
	scr_save_beard_grid();
}


ds_list_destroy(current);

ini_close();
