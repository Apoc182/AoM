if(audio_group_is_loaded(audiogroup_music)){
	if(!audio_is_playing(music_playing)) audio_play_sound(music_playing, 1000, true);
	control = true;
}

if(audio_group_is_loaded(audiogroup_sfx)){
	sfx_loaded = true;
}