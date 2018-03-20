/// @description Insert description here
// You can write your code in this editor

//When this object is created, it is going to have to dynamically select the beard based on the 
//savefile. For now, it will dynamically apply a static beard.

/* 

What i would suggest is that once the library of beards it created, an array is built containing all of there
beard sprites. Then, based on a variable that is saved in the savegame, this index is selected. That allows for
dynamic beard allocation.

*/

//Get current beard
sprite_index = scr_get_current_beard(BRD_SPRITE_NAME);
image_speed = 0;
turning = false;


//if(obj_default.sprite_index == spr_thor_turning || obj_default.sprite_index == spr_thor_umbrella_turning){
//	thor_turn = true;
//}else{
//	thor_turn = false;
//}

snap_to = obj_default;

alarm[0] = room_speed * random(5);
blinking = false;

frame_counter = 0;

//A boolean for talking.
talking = false;

//Current voice line
cur_voice = undefined;

//Just to make the long drawn out words look better
one_word = false;