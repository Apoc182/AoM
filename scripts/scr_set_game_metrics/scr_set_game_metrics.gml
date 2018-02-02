var index = scr_get_current_beard("index");
var map = ds_grid_get(global.all_beard_properties, index, BRD_MULTIPLIERS);

//Here is where we apply each ability 1 by 1
player_umbrella_multiplier = ds_map_find_value(map, "umbrella"); 
player_speed_multiplier = ds_map_find_value(map, "speed");
player_lives_multiplier = ds_map_find_value(map, "lives");
player_score_multiplier = ds_map_find_value(map, "score");
player_damage_multiplier = ds_map_find_value(map, "damage"); //Need to rework damage system
player_drop_ratio = ds_map_find_value(map, "drop_ratio");



//Game needs these

//Set the amount of lives to initialize
global.player_lives = player_lives_multiplier;


global.top_spd = 5 * player_speed_multiplier;

//Constants
global.black_drop_umbrella = 100 * player_score_multiplier;
global.player_damage = player_damage_multiplier;

//Ignorance levels
global.rb_can_ignorance_points = 4;
global.drop_on_umbrella_ignorance_points = 4 * player_umbrella_multiplier;
global.ignorance_level = 16;

//For the drops

global.colour_array = [];

	
switch(player_drop_ratio){
	
	case 1:
		global.colour_array = [c_white, c_white, c_white, c_white, 
								c_white, c_white, c_white, c_black];
		break;
								   
	case 2:
		global.colour_array = [c_white, c_white, c_white, c_white, 
								c_white, c_white, c_black, c_black];
		break;
								   
	case 3:
		global.colour_array = [c_white, c_white, c_white, c_white, 
								c_white, c_black, c_black, c_black];
		break;
								   
	case 4:
		global.colour_array = [c_white, c_white, c_white, c_white, 
								c_black, c_black, c_black, c_black];
		break;
								   
	default:
		global.colour_array = [c_white, c_white, c_white, c_white, 
								c_white, c_white, c_white, c_black];
		break;
}



					   
//Boolean for invulnerability
global.invulnerable = false;
global.invulnerable_flasher = false;
