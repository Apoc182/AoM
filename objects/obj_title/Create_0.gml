/// @description Insert description here
// You can write your code in this editor



image_alpha = 0;


if(!audio_is_playing(snd_title)){
	title_theme = audio_play_sound(snd_title, 0, true);
	audio_sound_gain(title_theme, .25, 0);
}

global.debugging = true;

global.drop_base_speed = 4;

//Below are global variables I want to make sure are in memory before the game loads.
//So we know when the umberella is out
global.umberella_out = false;

//Set the cooldown for the umberella in seconds
global.umberella_cooldown_time = 2; //This is wrong. There are 8 frames.

//For the drops
global.kirsten_whinging = [

	"But i love",
	"Why you do dis?",
	"wake up!",
	"do it!",
	"Why you do dis?",
	"wake up!",
	"do it!",
	"Why you do dis?",
	"wake up!",
	"do it!",
	"Why you do dis?",
	"wake up!",
	"do it!",
	"Why you do dis?",
	"wake up!",
	"do it!",
	"Why you do dis?",
	"wake up!",
	"do it!",
	"Why you do dis?",
	"wake up!",
	"do it!",
	"But i love",
	"Why you do dis?",
	"wake up!",
	"do it!",
	"Why you do dis?",
	"wake up!",
	"do it!",
	"Why you do dis?",
	"wake up!",
	"do it!",
	"Why you do dis?",
	"wake up!",
	"do it!",
	"Why you do dis?",
	"wake up!",
	"do it!",
	"Why you do dis?",
	"wake up!",
	"do it!",
	"Why you do dis?",
	"wake up!",
	"do it!"
	

]

global.kirsten_whinging_length = 42;

global.rain_hit = [
	snd_quick_cunt,
	snd_cunt_lng,
	snd_aw_cunt

]

//Max score
global.max_score = 0;

//Beard selection array
global.beards_to_choose = [spr_beard_normal, spr_beard_chops, spr_beard_black];
