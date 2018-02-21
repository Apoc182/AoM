/// @arg music_target

var target = argument0;
obj_music.music_target = target;

if(obj_music.music_target != obj_music.music_playing){
	obj_music.control = false;
	audio_play_sound(target,1000,true);
	audio_sound_gain(target,0,0);
	audio_sound_gain(target,obj_music.music_volume,2000);
	audio_sound_gain(obj_music.music_playing,0,2000);
}