if(control){
	if(global.debugging){
		if(keyboard_check_pressed(vk_numpad7)) music_volume = max(music_volume - 0.1, 0);
		if(keyboard_check_pressed(vk_numpad9)) music_volume = min(music_volume + 0.1, 1);
		if(keyboard_check_pressed(vk_numpad4)) sfx_volume = max(sfx_volume - 0.1, 0);
		if(keyboard_check_pressed(vk_numpad6)) sfx_volume = min(sfx_volume + 0.1, 1);
		if(keyboard_check_pressed(vk_numpad1)) dialogue_volume = max(dialogue_volume - 0.1, 0);
		if(keyboard_check_pressed(vk_numpad3)) dialogue_volume = min(dialogue_volume + 0.1, 1);
	}
	audio_group_set_gain(audiogroup_music, music_volume, 0);
	audio_group_set_gain(audiogroup_sfx, sfx_volume, 0);
	audio_group_set_gain(audiogroup_dialogue, dialogue_volume, 0);
	
	if(global.debugging){
		if(keyboard_check_pressed(vk_numpad2)) scr_music_fade(snd_title);
		if(keyboard_check_pressed(vk_numpad5)) scr_music_stop();
		if(keyboard_check_pressed(vk_numpad8)) scr_music_fade(snd_sheeran);
	}
	
}else{
	if(audio_sound_get_gain(music_playing) == 0){
		audio_stop_sound(music_playing);
		music_playing = music_target;
		audio_group_set_gain(audiogroup_music,music_volume,0);
		control = true;
	}
}

if(audio_is_playing(obj_music.music_playing) = 0) music_playing = 0;

switch(music_playing){
	case 0: {
		track_name = "Splash"
		break;
	}
	case 1: {
		track_name = "M.I.A. (NES Version)"
		break;
	}
	case 2: {
		track_name = "Lullaby"
		break;
	}
	case 3: {
		track_name = "Dead"
		break;
	}
	case 4: {
		track_name = "Game Over"
		break;
	}
	case 5: {
		track_name = "Thinking Out Loud"
		break;
	}
	default: {
		track_name = ""
		break;
	}
}