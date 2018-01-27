/// @description Insert description here
// You can write your code in this editor

//When this object is created, it is going to have to dynamically select the beard based on the 
//savefile. For now, it will dynamically apply a static beard.

/* 

What i would suggest is that once the library of beards it created, an array is built containing all of there
beard sprites. Then, based on a variable that is saved in the savegame, this index is selected. That allows for
dynamic beard allocation.

*/

sprite_index = ds_list_find_value(global.beard_setting, 0);


alarm[0] = room_speed * random(5);
blinking = false;

frame_counter = 0;