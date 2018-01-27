/// @description Insert description here
// You can write your code in this editor

if(!audio_is_playing(snd_title)){
	audio_play_sound(snd_title, 0, true);
	audio_sound_gain(snd_title, .25, 0);
}


