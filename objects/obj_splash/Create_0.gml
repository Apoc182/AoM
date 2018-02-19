x = (SCREEN_WIDTH)/2;
y = (SCREEN_HEIGHT)/2;

audio_play_sound(snd_splash, 0, false);
toggle_sound_fade = true;

instance_create_depth(0,0,-50,obj_fader);
obj_fader.fade_state = -1;
obj_fader.fade_alpha = .99999999;
obj_fader.fade_speed = .01;