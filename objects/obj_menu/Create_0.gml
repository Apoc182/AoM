//Menu options
menu = ["Start", "Options", "Exit"];

//Which menu
options = false;

//Where cursor is
mpos = 0;

if(instance_exists(obj_fader)) obj_fader.fade_speed = .05;

if(!audio_is_playing(snd_title)){
	audio_play_sound(snd_title, 0, true);
	audio_sound_gain(snd_title, .25, 0);
}