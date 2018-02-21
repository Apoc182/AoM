//Menu options
menu = ["Start", "Options", "Exit"];

//Which menu
options = false;

//Where cursor is
mpos = 0;

if(instance_exists(obj_fader)) obj_fader.fade_speed = .05;

scr_music_play(snd_title);