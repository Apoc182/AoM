//Fade in 
audio_stop_sound(snd_title);
audio_play_sound(snd_title,0,false);
audio_sound_gain(snd_title, 0, 0);
audio_sound_gain(snd_title, .25, 1000);
audio_sound_gain(snd_gameover, 0, 1000);

//Change the test colours
draw_set_color(c_white);

global.max_score = 0;
global.scr = 0;
global.time_multiplier = 0;
global.player_lives = 3;