/// @description Return high scores

if(ds_map_find_value(async_load, "url") == "http://gmscoreboard.com/handle_score.php?tagid=5a46f6769a1aa15146000542325&getscore=10" && async_init){


	json = ds_map_find_value(async_load, "result");
	if (!is_undefined(json)){
		i = 1;
		map = json_decode(json);


		//Check that its not broken
		if (map == -1){
			show_message("High scores unavailable.")
			exit;
		}
		
		//For referencing values in the map
	var player_positions = [

		"p1",
		"p2",
		"p3",
		"p4",
		"p5",
		"p6",
		"p7",
		"p8",
		"p9",
		"p10"
	
	
	]

	var player_scores = [

		"s1",
		"s2",
		"s3",
		"s4",
		"s5",
		"s6",
		"s7",
		"s8",
		"s9",
		"s10"
	
	
	]

		
		for (var i = 0; i < 10; i++){
			if(!is_undefined(ds_map_find_value(map, player_positions[i]))){
				global.top_players[i] = ds_map_find_value(map, player_positions[i]) + " - " + ds_map_find_value(map, player_scores[i])
			}
		}
		
		async_init = false;

		
	}
}




