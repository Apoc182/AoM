/// @description Insert description here
// You can write your code in this editor

if(fade_in) image_alpha += .01;
if(image_alpha == 1) fade_in = false; 
if(!fade_in) {
	if(!instance_exists(obj_fader)){
		instance_create_depth(0,0,-50,obj_fader)
		obj_fader.target = rm_enter_name;
	}
	if(toggle_sound_fade){
		toggle_sound_fade = false;
		audio_sound_gain(snd_splash, 0, 1500)
	}
}


if(image_index == 6) image_speed = 0