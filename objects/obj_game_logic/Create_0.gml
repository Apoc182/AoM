beard_unlocked = false;
alarm_on = false;
drop_speed = .5 * room_speed; // Less is more. This is the length of time the alarm is set for.
global.scr = 0;
global.spd = 4;
timer = 0;
if(!global.tutorial_on) alarm[4] = room_speed;
occupied_x = ds_list_create();



global.time_multiplier = 0;

previous_time_multiplier = global.time_multiplier;


//The amount of time between speed increases
time_speed_jump = .25;


//Start the alarm
alarm[3] = global.speed_jump;

//Random colour array		
colours = [c_aqua, c_blue, c_fuchsia, c_maroon, c_purple, c_yellow];

//For beard unlocked floating		
floater = 0;		
first_unlocked = true;




array_counter = 0;

global.all_unlocks_available = [];


//Ignorance power level
global.ignorance_level = sprite_get_number(spr_ignorancometre) - 1;
previous_ignorance_level = global.ignorance_level;
bar_refill_speed = .2;