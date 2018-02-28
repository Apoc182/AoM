//Fade in 
audio_group_stop_all(audiogroup_sfx);
audio_group_stop_all(audiogroup_dialogue);

//Change the test colours
draw_set_color(c_white);

global.scr = 0;
global.time_multiplier = 0;
global.black_drop_multiplier = 0;
global.black_drop_multiplier_max = 0;
global.num_black_drops = 0;
scr_set_game_metrics();
keyboard_clear(vk_space);