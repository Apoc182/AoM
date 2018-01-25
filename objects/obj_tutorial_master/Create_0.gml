/// @description Insert description here
// You can write your code in this editor

if(!global.tutorial_on){
	instance_destroy();
}

tutorial_text = [

				 "Welcome to Miller's dream!\nPress SPACE to use your Umbrella of Ignorance!",
				 "Collect 'Der Bitter' to fill Umbrella metre.", 
				 "Awesome! Now here comes the rain!",
				 "Collect Smokey Joe's delicious hotsauce to replenish lives!",
				 "Collect the black sentences with the umbrella for mad-ass points!",
				 ""
			]


current_text_pos = 0;
alpha_variance = .01;

fade_in = false;
fade_out = false;

//Makes the condition run only once
active = true;

//Set the ignorancometre low
global.ignorance_level = 8;


alarm_delay = 2;
alarm[0] = alarm_delay * room_speed;

red_bitter_spawns = false;
hot_sauce_spawns = false;
rain_drop_spawns = false;

alpha_variance_again = 0;
