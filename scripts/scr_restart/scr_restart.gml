//Fade in 
audio_stop_sound(snd_title);
audio_stop_sound(snd_lullaby);
audio_stop_sound(snd_sheeran);
audio_stop_sound(snd_splash);

audio_play_sound(snd_title,0,true);

audio_sound_gain(snd_title, 0, 0);
audio_sound_gain(snd_title, .25, 1000);
audio_sound_gain(snd_gameover, 0, 1000);

//Change the test colours
draw_set_color(c_white);

global.scr = 0;
global.time_multiplier = 0;
global.black_drop_multiplier = 0;
global.black_drop_multiplier_max = 0;
scr_set_game_metrics();
keyboard_clear(vk_space);

audio_stop_sound(snd_combo1);
audio_stop_sound(snd_combo2);
audio_stop_sound(snd_combo3);
audio_stop_sound(snd_combo4);
audio_stop_sound(snd_combo5);
audio_stop_sound(snd_combo6);
audio_stop_sound(snd_combo7);
audio_stop_sound(snd_combo8);
audio_stop_sound(snd_combo9);
audio_stop_sound(snd_combo10);