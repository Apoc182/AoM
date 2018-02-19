//Load fullscreen
ini_open("Save.ini");
window_set_fullscreen(ini_read_real("Save", "Fullscreen", false));
ini_close();

//Debugging tools

	//Master switch
	global.debugging = true;
	
	//Starting room
	starting_room = rm_title;
	
	//Room skipper
	if(global.debugging){
		room_goto(starting_room);
	}
	
	//Dummy values for skipping rooms
	if(global.debugging){
		global.user_name = "Debugger";
	}
	
	
//Master Switches

//Lets set tutorial baed on "Save.ini"
ini_open("Save.ini");
global.tutorial_on = ini_read_real("Save", "tutorial_on", true);
ini_close();



global.is_thor = false;

//Beard grid macro's
#macro BRD_MAX_BEARD_PROPERTIES 7



//For accessing beard information
#macro BRD_SPRITE_NAME 0
#macro BRD_BEARD_NAME 1
#macro BRD_BEARD_DESCRIPTION 2
#macro BRD_UNLOCKED 3
#macro BRD_CURRENT 4
#macro BRD_SCORE_TO_UNLOCK 5
#macro BRD_MULTIPLIERS 6





//NEW GRID SYSTEM


	
//Here is where we add our beards... Only ONE beard may have true as its 'current' argument.
//NOTE, there will be defaults applied if none are specified.
/*Key: 
0: Sprite (sprite reference)
1: Name (string)
2: Description (string)
3: Is unlocked? (Boolean)
4: Is currently selected (Boolean) NOTE: only one beard should be set to true at any given time.
5: Score (Real)
6: Umbrella damage multiplier (Array[string, real])
7: Speed multiplier (Array[string, real])
8: Lives multiplier (Array[string, real]) NOTE: Default is 3.
9: Score multiplier (Array[string, real])
10: Damage multiplier (Array[string, real])
11: Drop Ratio multiplier (Array[string, real])
12: Umbrella damage multiplier (Array[string, real]) NOTE: It is the fractional chance of getting a black drop out of 6.
															eg. 1/6, 2/6, 3/6, 4/6, 5/6, 6/6.

	
	
*/

counter = 0;



//SET THIS TO THE NUMBER OF TIMES YOU CALL THE BELOW SCRIPT!

//Update this macro when adding new beards.
#macro BRD_NUMBER_OF_BEARDS 16
global.all_beard_properties = ds_grid_create(BRD_NUMBER_OF_BEARDS, BRD_MAX_BEARD_PROPERTIES);

//!!!
//!!!
	
scr_add_beard_to_grid(spr_beard_normal, "Miller's Beard", "No bonus", true, true, 0, ["umbrella", 1],
						["speed", 1], ["lives", 3], ["score", 1], ["damage", 1], ["drop_ratio", 1]);
						  
scr_add_beard_to_grid(spr_clean_shaven, "Clean Shaven", "No bonus", true, false, 0, ["umbrella", 1],
						["speed", 1], ["lives", 3], ["score", 1], ["damage", 1], ["drop_ratio", 1]);

scr_add_beard_to_grid(spr_freeman,  "Free Man", "Slightly increases speed", false, false, 500, ["umbrella", 1],
						["speed", 1.25], ["lives", 3], ["score", 1], ["damage", 1], ["drop_ratio", 1]);

scr_add_beard_to_grid(spr_van_dyke, "Van Dyke", "Slighlty increases lives", false, false, 1000, ["umbrella", 1],
						["speed", 1], ["lives", 4], ["score", 1], ["damage", 1], ["drop_ratio", 1]);			  
	
scr_add_beard_to_grid(spr_chops_2, "Burnside", "Slightly increases umbrella endurance", false, false, 1500, ["umbrella", .5],
						["speed", 1], ["lives", 3], ["score", 1], ["damage", 1], ["drop_ratio", 1]);
	
scr_add_beard_to_grid(spr_chaplin, "Great Dictator", "Slightly increases score", false, false, 2000, ["umbrella", 1],
						["speed", 1], ["lives", 3], ["score", 1.25], ["damage", 1], ["drop_ratio", 1]);
						  
scr_add_beard_to_grid(spr_grey, "Old Greybeard", "Slightly increases black drop rate", false, false, 2500, ["umbrella", 1],
						["speed", 1], ["lives", 3], ["score", 1], ["damage", 1], ["drop_ratio", 2]);
						  
scr_add_beard_to_grid(spr_beard_chops, "Logan", "Greatly increases speed", false, false, 3000, ["umbrella", 1],
						["speed", 1.5], ["lives", 3], ["score", 1], ["damage", 1], ["drop_ratio", 1]);
						  
scr_add_beard_to_grid(spr_sorcerer, "Sorcerer", "Greatly increases lives", false, false, 4000, ["umbrella", 1],
						["speed", 1], ["lives", 5], ["score", 1], ["damage", 1], ["drop_ratio", 1]);

scr_add_beard_to_grid(spr_abe, "Honest Abe", "Greatly increases umbrella indurance", false, false, 5000, ["umbrella", .25],
						["speed", 1], ["lives", 3], ["score", 1], ["damage", 1], ["drop_ratio", 1]);
	
scr_add_beard_to_grid(spr_mario, "Jumpman", "Greatly increases score", false, false, 6000, ["umbrella", 1],
						["speed", 1], ["lives", 3], ["score", 1.5], ["damage", 1], ["drop_ratio", 1]);
						
scr_add_beard_to_grid(spr_white, "White Wizard", "Greatly increases black drop rate", false, false, 7000, ["umbrella", 1],
						["speed", 1], ["lives", 3], ["score", 1], ["damage", 1], ["drop_ratio", 3]);
	
scr_add_beard_to_grid(spr_viking, "Erik the Red", "Slightly increases all stats", false, false, 8000, ["umbrella", .5],
						["speed", 1.25], ["lives", 4], ["score", 1.25], ["damage", 1], ["drop_ratio", 2]);
						  
scr_add_beard_to_grid(spr_beard_black, "Blackbeard", "Greatly increases all stats", false, false, 10000, ["umbrella", .25],
						["speed", 1.5], ["lives", 5], ["score", 1.5], ["damage", 1], ["drop_ratio", 3]);
						
scr_add_beard_to_grid(spr_blonde, "God of Thunder", "Greatly increases all stats", false, false, 12000, ["umbrella", .25],
						["speed", 1.5], ["lives", 5], ["score", 1.5], ["damage", 1], ["drop_ratio", 2]);
						
scr_add_beard_to_grid(spr_ginger, "Fire Crotch", "Greatly increases all stats", false, false, 15000, ["umbrella", .25],
						["speed", 1.5], ["lives", 5], ["score", 1.5], ["damage", 1], ["drop_ratio", 3]);


//Load current and unlocked values from player save.
if(file_exists("Save.ini")){
	scr_load_beard_grid();
}


	
//Open all beards for debugger
//if(global.debugging){
//	for(i = 0; i < BRD_NUMBER_OF_BEARDS; i++){
//		ds_grid_set(global.all_beard_properties, i, BRD_UNLOCKED, true);
//	}
//}
	



//Apply buffs
scr_set_game_metrics();



//Grid box size
#macro GRID_SIZE 32
#macro SCREEN_WIDTH 1024
#macro SCREEN_HEIGHT 768


///
///
///

//For when the drops get faster and wallpaper
global.speed_jump = room_speed * 15;

//Initialise fonts
map_string = " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~";
nesfont = font_add_sprite_ext(spr_nesfont, map_string, false, 0);
draw_set_font(nesfont);

//This flag indicates to the name screen that it has already done this initial check for whether
//the user has a username or not and that it is now being changed from the menu.
global.username_exists = false;



//Black drop multiplier
global.black_drop_multiplier = 0;


global.drop_base_speed = 4;

//Below are global variables I want to make sure are in memory before the game loads.
//So we know when the umbrella is out
global.umbrella_out = false;

//Set the cooldown for the umbrella in seconds
global.umbrella_cooldown_time = 2; 

//For the drops
global.kirsten_whinging = [

"You have to clean the house",

"Let's go for a walk at the Gorge",

"You're urinating on yourself",

"We have to do the groceries",

"How much did you drink last night?",

"It's time for work",

"You're snoring too loud",

"You're being selfish",

"You can't just sleep all day",

"We have things to do",

"Take me to the monkey park",

"You have gardening to do",

"Who the hell is Durry Jesus?",

"Our deck needs fixing",

"I want to go and get some food",

"Your friends are waiting for you",

"Where is your wedding ring?",

"You've been sleeping all day",

"You need to wash your body",

"Why are you this way?",

]

global.kirsten_whinging_length = array_length_1d(global.kirsten_whinging);

global.thinking_out_loud = [

"I will be loving you 'til we're 70",
"My heart could still fall as hard at 23",
"People fall in love in mysterious ways",
"Maybe just the touch of a hand",
"I fall in love with you every single day",
"I just wanna tell you I am",

"Take me into your loving arms",
"Kiss me under the light of a thousand stars",
"Place your head on my beating heart",
"I'm thinking out loud",
"Maybe we found love right where we are",

"Your soul can never grow old, it's evergreen",
"Your smile's forever in my mind and memory",
"People fall in love in mysterious ways",
"Maybe it's all part of a plan",
"I'll just keep on making the same mistakes",
"Hoping that you'll understand",

"Take me into your loving arms",
"Kiss me under the light of a thousand stars",
"Place your head on my beating heart",
"I'm thinking out loud",
"Maybe we found love right where we are",
"Maybe we found love right where we are",
"We found love right where we are",

]

global.thinking_out_loud_length = array_length_1d(global.thinking_out_loud);

global.rain_hit = [
	snd_quick_cunt,
	snd_cunt_lng,
	snd_aw_cunt

]

//Count times cunts said
global.cuntTally = 0;

//Max score - Check ini first, then if not present, load 0.
ini_open("Save.ini");
if(ini_key_exists("Save", "local_max")){
	global.max_score = ini_read_real("Save", "local_max", 0);
}else{
	global.max_score = 0;
}


ini_close();