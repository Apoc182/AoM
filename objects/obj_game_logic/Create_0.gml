beard_unlocked = false;
alarm_on = false;
drop_speed = .5 * room_speed; // Less is more. This is the length of time the alarm is set for.
global.scr = 0;
global.spd = 4;
global.timer = 0;
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

//Ed for funzies
if(scr_get_current_beard(BRD_SPRITE_NAME) == spr_ginger){
	
		audio_sound_gain(snd_title, 0, 0);
		if(audio_is_playing(snd_sheeran)) audio_stop_sound(snd_sheeran);
		audio_play_sound(snd_sheeran, 0, true);
		

}

max_lives = global.player_lives;