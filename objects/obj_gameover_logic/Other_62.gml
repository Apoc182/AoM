/// @description Return high scores

if(ds_map_find_value(async_load, "url") == "http://gmscoreboard.com/handle_score.php?tagid=5a46f6769a1aa15146000542325&getscore=10"){


	json = ds_map_find_value(async_load, "result");
	if (!is_undefined(json)){
		i = 1;
		map = json_decode(json);


		//Convert this to a DSMap

		//Check that its not broken
		if (map == -1){
			show_message("High scores unavailable.")
			exit;
		}

		
		for (var i = 0; i < 10; i++){
			if(!is_undefined(ds_map_find_value(map, player_positions[i]))){
				top_players[i] = ds_map_find_value(map, player_positions[i]) + " - " + ds_map_find_value(map, player_scores[i])
			}
		}
	}
}

