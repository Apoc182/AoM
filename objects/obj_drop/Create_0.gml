/// @description Insert description here
// You can write your code in this editor

//This is for the random black drops you catch for more points. 



colour_array = [c_white, c_white, c_white, c_white, 
				c_white, c_white, c_white, c_black];
				
this_colour = colour_array[random(array_length_1d(colour_array))];


this_text = global.kirsten_whinging[random(global.kirsten_whinging_length)];
this_speed =  random(4) + global.time_multiplier;

drop_contact = false;
is_thunder = false;
lightning_frame = 0;
thunder_timer = room_speed/4
counter = 0;

