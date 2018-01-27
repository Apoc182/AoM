//Debugging tools

	//Master switch
	global.debugging = true;
	
	//Starting room
	starting_room = rm_intro;
	
	//Room skipper
	if(global.debugging){
		room_goto(starting_room);
	}
	
	//Dummy values for skipping rooms
	if(global.debugging){
		global.beard_setting = 0;
		global.user_name = "Debugger";
	}
	
	
//Master Switches
global.tutorial_on = true;
global.is_thor = false;


///
///
///



//Initialise fonts
map_string = " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~";
nesfont = font_add_sprite_ext(spr_nesfont, map_string, false, 0);
draw_set_font(nesfont);







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

global.rain_hit = [
	snd_quick_cunt,
	snd_cunt_lng,
	snd_aw_cunt

]

//Max score - Check ini first, then if not present, load 0.
ini_open("Save.ini");
if(ini_key_exists("Save", "local_max")){
	global.max_score = ini_read_real("Save", "local_max", 0);
}else{
	global.max_score = 0;
}


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


//Set the amount of lives to initialize
global.player_lives = 3;



global.ignorance_level = 16;

//For the drops
global.colour_array = [c_white, c_white, c_white, c_white, 
					   c_white, c_white, c_white, c_black];
					   
//Boolean for invulnerability
global.invulnerable = false;
global.invulnerable_flasher = false;

