var sound = snd_unbrella_fill;
var pitch_changer = .05;

audio_sound_pitch(sound, 1 + (pitch_changer * argument0));
audio_play_sound(sound, 0, false);