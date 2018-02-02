var index = scr_get_current_beard("index");
var map = ds_grid_get(global.all_beard_properties, index, BRD_MULTIPLIERS);

//Here is where we apply each ability 1 by 1
player_lives_multiplier = ds_map_find_value(map, "lives");



//Game needs these

//Set the amount of lives to initialize
global.player_lives = 3 + player_lives_multiplier;


//Constants
global.black_drop_umbrella = 100;

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



///THIS NEED WORKING ON