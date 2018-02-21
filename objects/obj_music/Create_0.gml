audio_group_load(audiogroup_music);
audio_group_load(audiogroup_sfx);
audio_group_load(audiogroup_dialogue);

music_playing = snd_splash;

music_volume = 1;
sfx_volume = 1;
dialogue_volume = 1;

control = false;
music_target = 0;
sfx_loaded = false;

track_name = 0;