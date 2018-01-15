/// @description Insert description here
// You can write your code in this editor



image_alpha = 0;


if(!audio_is_playing(snd_title)){
	title_theme = audio_play_sound(snd_title, 0, true);
	audio_sound_gain(title_theme, .25, 0);
}

global.debugging = false;

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

//Beard selection array. This will check what they player has unlocked and apply it.

//An array of all possible beards
all_beards = [spr_beard_normal, spr_beard_chops, spr_beard_black,
			  spr_abe, spr_chaplin, spr_chops_2, spr_blonde, spr_grey,
		      spr_white, spr_van_dyke];
			  
//A variable tracking where we are up to in the beards_to_choose array. Would be easier if i could
//find an append function.
beards_to_choose_array_location = 0;

//This loop will go through and set each part of the save.ini to true based on if they are unlocked or not.

for (var i = 0; i < array_length_1d(all_beards); i++){
	ini_open("Save.ini")
	if(ini_read_real("Save", sprite_get_name(all_beards[i]), 0) > 0){
		global.beards_to_choose[beards_to_choose_array_location] = all_beards[i];
		beards_to_choose_array_location++;
	}
	
	
	
}

ini_close();
ini_close();


//Set the amount of lives to initialize
global.player_lives = 3;