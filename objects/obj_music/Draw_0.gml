if(global.debugging){
	draw_set_color(c_silver);
	draw_text(GRID_SIZE, GRID_SIZE * 4 + (GRID_SIZE/2 * 22), "Music: " + string(music_volume * 100) + "%");
	draw_text(GRID_SIZE, GRID_SIZE * 4 + (GRID_SIZE/2 * 23), "SoundFX: " + string(sfx_volume * 100) + "%");
	draw_text(GRID_SIZE, GRID_SIZE * 4 + (GRID_SIZE/2 * 24), "Speech: " + string(dialogue_volume * 100) + "%");
	draw_text(GRID_SIZE, GRID_SIZE * 4 + (GRID_SIZE/2 * 25), "Track: " + string(track_name));
}