//Fade in 
audio_stop_sound(snd_title);
audio_stop_sound(snd_sheeran);
audio_play_sound(snd_title,0,false);
audio_sound_gain(snd_title, 0, 0);
audio_sound_gain(snd_title, .25, 1000);
audio_sound_gain(snd_gameover, 0, 1000);

//Change the test colours
draw_set_color(c_white);

global.scr = 0;
global.time_multiplier = 0;
scr_set_game_metrics();
keyboard_clear(vk_space);