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
global.beard_setting = ds_list_create();
default_beard = spr_beard_normal;
global.sprite_points = ds_map_create();
global.sprite_names = ds_list_create();

/* All that has to be done to add a new beard */
//NOTE: These MUST be in order of lowest to highest points wise and the list with names has to have a name for each.
//in this position is the default beard.
ds_map_add(global.sprite_points, 0, spr_clean_shaven);
ds_map_add(global.sprite_points, 200, spr_beard_black);
ds_map_add(global.sprite_points, 100, spr_beard_chops);
ds_map_add(global.sprite_points, 200, spr_abe);
ds_map_add(global.sprite_points, 100, spr_chaplin);
ds_map_add(global.sprite_points, 200, spr_chops_2);
ds_map_add(global.sprite_points, 100, spr_blonde);
ds_map_add(global.sprite_points, 200, spr_grey);
ds_map_add(global.sprite_points, 100, spr_white);
ds_map_add(global.sprite_points, 100, spr_van_dyke);

ds_list_add(global.sprite_names, "Cunt", "dick", "wank", "", "", "", "", "", "", "", "");


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



//Global list of currently unlocked beards.
global.unlocked_beards = ds_list_create();

if(!file_exists("beards.ini")){	
	ini_open("beards.ini");
	ds_list_add(global.unlocked_beards, spr_beard_normal);
	write_to_ini = ds_list_write(global.unlocked_beards);
	ini_write_string("GameData", "unlocked_beards", write_to_ini);
	ds_list_add(global.beard_setting, default_beard) 
	ini_write_string("GameData", "beard_setting", write_to_ini);
}

else{	
	ini_open("beards.ini");
	ds_list_read(global.unlocked_beards, ini_read_string("GameData", "unlocked_beards", ""));
	ds_list_read(global.beard_setting, ini_read_string("GameData", "beard_setting", ""));
}

ini_close()


