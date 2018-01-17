
//Create array for drawing sprites

menu_titles = ["Miller", "Chops", "Black", "Abe", "Chaplin", "Chops 2", "Blondie", "Gandalf",
			   "White", "Van Dyke"];
beard_locations = [];



box_half_height = 32;
box_width = 63;
origin = (window_get_width()/2) - (box_width * array_length_1d(global.beards_to_choose)/2);
beard_loc_y = window_get_height()/2


//The default place for the cursor
mover = 0;

//The currently set beard
global.beard_setting = 0;


