beard_unlocked = false;
alarm_on = false;
drop_speed = .5 * room_speed; // Less is more. This is the length of time the alarm is set for.
global.scr = 0;
global.spd = 4;
global.timer = 0;
alarm[4] = -1;
occupied_x = ds_list_create();



global.time_multiplier = 0;

//The amount of time between speed increases
time_speed_jump = .25;


//Start the alarm


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
bar_refill_speed = .25;

//Ed for funzies
if(scr_get_current_beard(BRD_SPRITE_NAME) == spr_ginger){
	
		audio_sound_gain(snd_title, 0, 0);
		if(audio_is_playing(snd_sheeran)) audio_stop_sound(snd_sheeran);
		audio_play_sound(snd_sheeran, 0, true);
		audio_sound_gain(snd_sheeran,1,0);
		

}

global.bottle_number = [];

//Create life instances
for(i = 0; i < global.player_lives / 6; i++){
	
	global.bottle_number[i] = instance_create_depth((27.5 * GRID_SIZE) - ((GRID_SIZE) * i), GRID_SIZE, 40, obj_life_bottle);
	global.bottle_number[i].empty = i * 6;
	global.bottle_number[i].half_full = (i + .5) * 6;
	global.bottle_number[i].full = (i + 1) * 6;
	global.bottle_number[i].position = i;

}

//Array for selecting pickups
pickups = [obj_rb_can, obj_rb_can, obj_rb_can, obj_hot_sauce, obj_hot_sauce];


//So we know when everything is frozen after gameover
freeze_counter = 0;
turn_off_title_song = true;
dying = false;

//So we can remember what the score was for statistical purposes.
original_score = 0;

umbrella_snd = true;