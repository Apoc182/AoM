/// @arg music_target

var target = argument[0];
if(argument_count > 1){
	var loop = argument[1];
}else{
	var loop = true;
}

obj_music.music_target = target;

if(obj_music.music_target != obj_music.music_playing){
	obj_music.control = false;
	audio_play_sound(target,1000,loop);
	audio_sound_gain(target,obj_music.music_volume,0);
	audio_sound_gain(obj_music.music_playing,0,0);
}