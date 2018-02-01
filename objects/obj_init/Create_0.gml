//Debugging tools

	//Master switch
	global.debugging = false;
	
	//Starting room
	starting_room = dream;
	
	//Room skipper
	if(global.debugging){
		room_goto(starting_room);
	}
	
	//Dummy values for skipping rooms
	if(global.debugging){
		global.user_name = "Debugger";
	}
	
	
//Master Switches
global.tutorial_on = true;
global.is_thor = false;

//Beard grid macro's
#macro BRD_MAX_BEARD_PROPERTIES 6

//Update this macro when adding new beards.
#macro BRD_NUMBER_OF_BEARDS 2

//For accessing beard information
#macro BRD_SPRITE_NAME 0
#macro BRD_BEARD_NAME 1
#macro BRD_UNLOCKED 2
#macro BRD_CURRENT 3
#macro BRD_SCORE_TO_UNLOCK 4
#macro BRD_MULTIPLIERS 5





//NEW GRID SYSTEM
counter = 0;
ini_open("beards.ini");

if(file_exists("beards.ini")){
	global.all_beard_properties = ds_grid_create(BRD_NUMBER_OF_BEARDS, BRD_MAX_BEARD_PROPERTIES);
	ds_grid_read(global.all_beard_properties, ini_read_string("GameData", "beard_settings", "unknown"));
}else{
	
	global.all_beard_properties = ds_grid_create(BRD_NUMBER_OF_BEARDS, BRD_MAX_BEARD_PROPERTIES);
	
	//Here is where we add our beards... Only ONE beard may have true as its 'current' argument.
	scr_add_beard_to_grid(spr_beard_normal, "Normal", true, true, 100, ["lives", 2]);
	scr_add_beard_to_grid(spr_chaplin, "chap", false, false, 100, ["lives", 2]);

	//Save them
	var beards = ds_grid_write(global.all_beard_properties);
	ini_write_string("GameData", "beard_settings", beards);
	
}

ini_close();



//Grid box size
#macro GRID_SIZE 32


///
///
///

//For when the drops get faster and wallpaper
global.speed_jump = room_speed * 30;

//Initialise fonts
map_string = " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~";
nesfont = font_add_sprite_ext(spr_nesfont, map_string, false, 0);
draw_set_font(nesfont);

//This flag indicates to the name screen that it has already done this initial check for whether
//the user has a username or not and that it is now being changed from the menu.
global.username_exists = false;





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


ini_close();


//Set the amount of lives to initialize
global.player_lives = 3;


//Constants
global.white_drop_ground = 5;
global.white_drop_head = -150;
global.white_drop_umbrella = -50;
global.black_drop_ground = -5;
global.black_drop_head = -500;
global.black_drop_umbrella = 100;
global.rb_can_pickup = 100;
//Ignorance levels
global.rb_can_ignorance_points = 4;
global.drop_on_umbrella_ignorance_points = 2;


global.ignorance_level = 16;

//For the drops
global.colour_array = [c_white, c_white, c_white, c_white, 
					   c_white, c_white, c_white, c_black];
					   
//Boolean for invulnerability
global.invulnerable = false;
global.invulnerable_flasher = false;



