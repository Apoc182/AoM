alarm_on = false;
drop_speed = .5 * room_speed; // Less is more. This is the length of time the alarm is set for.
global.scr = 0;
spd = 4;
array_count = 0;
timer = 0;
alarm[4] = room_speed;

global.time_multiplier = 0;


//The amount of time between speed increases
speed_jump = room_speed * 15;


//Start the alarm
alarm[3] = speed_jump;

//Constants
global.whiteDropGround = 5;
global.whiteDropHead = -150;
global.whiteDropUmberella = -50;
global.blackDropGround = -5;
global.blackDropHead = -500;
global.blackDropUmberella = 100;
global.rbCanPickup = 100;