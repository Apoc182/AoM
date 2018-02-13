/// @description Insert description here
// You can write your code in this editor

if(!global.tutorial_on){
	instance_destroy();
}else{

	tutorial_text = [
					 "",
					 "Welcome to Miller's dream!\nPress SPACE to use your Umbrella of Ignorance!",
					 "Collect `Der Bitter' to fill Umbrella metre.", 
					 "Awesome! Now here comes the rain!\nDon't let Kirstyn wake you!",
					 "Collect Smokey Joe's delicious hotsauce to replenish lives!",
					 "Collect the black sentences with the \numbrella for mad-ass points!",
					 "You know what's up, now get out there!",
					 "",
				]

	next_text = false;
	current_text_pos = 0;
	alpha_variance = 0;
	fade_speed = .025;
	fade_in = false;
	fade_out = false;

	//Makes the condition run only once
	active = true;

	//Set the ignorancometre low
	global.ignorance_level = 8;


	alarm_delay = 2;
	alarm[1] = alarm_delay * room_speed;

	red_bitter_spawns = false;
	hot_sauce_spawns = false;
	rain_drop_spawns = false;

	alpha_variance_again = 0;
	max_alpha_variance_again = 1.5;
	esc_set = false;
	show_escape_string = false;
	number_of_flashes = 0;
	max_flash = 10;
	freeze_counter = 0;
	alarm[2] = room_speed * .5;
}