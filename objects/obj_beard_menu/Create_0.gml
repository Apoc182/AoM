
//Create array for drawing sprites
menu = [spr_beard_normal, spr_beard_chops, spr_beard_black];
menu_titles = ["Miller", "Chops", "Black"];
beard_locations = [];

box_half_height = 32;
box_width = 63;
origin = (window_get_width()/2) - (box_width * 2);
beard_loc_y =window_get_height()/2


//The default place for the cursor
mover = 0;

//The currently set beard
global.beard_setting = 0;


