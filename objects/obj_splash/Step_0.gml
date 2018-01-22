/// @description Insert description here
// You can write your code in this editor


if(image_alpha == 1) fade_in = false; 
if(image_index == 6) image_speed = 0
if(fade_in) image_alpha += .01;
if(!fade_in) {
	image_alpha -= .01;
	if(toggle_sound_fade){
		toggle_sound_fade = false;
		audio_sound_gain(snd_splash, 0, 1500)
	}
	
}