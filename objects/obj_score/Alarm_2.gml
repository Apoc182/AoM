//play thunder sound
if(global.is_thor){
	var thunder = audio_play_sound(snd_thunder, 0, false);
	audio_sound_pitch(thunder, (random(40) + 80) * .01);
}