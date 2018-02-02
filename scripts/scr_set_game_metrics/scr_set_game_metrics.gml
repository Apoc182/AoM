var index = scr_get_current_beard("index");
var map = ds_grid_get(global.all_beard_properties, index, BRD_MULTIPLIERS);

//Here is where we apply each ability 1 by 1
player_umbrella_multiplier = ds_map_find_value(map, "umbrella"); 
player_speed_multiplier = ds_map_find_value(map, "speed"); //Need to rework speed system
player_lives_multiplier = ds_map_find_value(map, "lives");
player_score_multiplier = ds_map_find_value(map, "score"); //How is this different to points?
player_damage_multiplier = ds_map_find_value(map, "damage"); //Need to rework damage system



//Game needs these

//Set the amount of lives to initialize
global.player_lives = player_lives_multiplier;


//Constants
global.black_drop_umbrella = 100;

//Ignorance levels
global.rb_can_ignorance_points = 4;
global.drop_on_umbrella_ignorance_points = 2 * player_umbrella_multiplier;
global.ignorance_level = 16;

//For the drops
global.colour_array = [c_white, c_white, c_white, c_white, 
					   c_white, c_white, c_white, c_black];
					   
//Boolean for invulnerability
global.invulnerable = false;
global.invulnerable_flasher = false;



///THIS NEED WORKING ON