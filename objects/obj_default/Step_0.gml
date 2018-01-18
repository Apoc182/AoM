/// @description Insert description here
// You can write your code in this editor


//A simple vaiable to determine which sprite to use for umbrella
moving = false;


//Alex idea variables

pressed_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
pressed_right = keyboard_check(ord("D")) || keyboard_check(vk_right);

//Just so we dont times things by 0
if(global.time_multiplier > 0){
	multiplier = global.time_multiplier + 1;
}else{
	multiplier = 1;
}

//Sets speed to 0 if player tries to leave the screen.
if (x - (sprite_actual_width/2) + spd <= 0 || x + (sprite_actual_width/2) + spd >= window_get_width()){
	spd = 0;
}

//Increments speed accordingly when player goes right.
if (pressed_right && x + (sprite_actual_width/2) + spd < window_get_width()){
	moving = true;
	if (spd < top_spd){
		spd += inertia * multiplier;
	}
	
	sprite_index = walking;
	image_xscale = 1;
}


//Increments speed accordingly when player goes left.
if (pressed_left && x - (sprite_actual_width/2) > 0){
	moving = true;
	if (spd > -top_spd){
		spd -= inertia * multiplier;
	}
	sprite_index = walking;
	image_xscale = -1;
}



//Slows player down when keys are not pressed until reaches a stop.
if (!keyboard_check(ord("A")) && !keyboard_check(ord("D")) && !keyboard_check(ord(vk_space)) && !keyboard_check(vk_left) && !keyboard_check(vk_right)){
	sprite_index = standing;
	if (spd < 0){
		spd += inertia;
	}

	if (spd > 0){
		spd -= inertia;
	}
	
	if (spd >= -.1 && spd <= .1 ){
		spd = 0;
	}
}


//X position is updated every frame based on the above speed logic.
x += spd;

//Plays a footstep everytime the animation reaches the ground.
if(image_index = 1){
	audio_play_sound(snd_step, 0, false);
}

//Detects space bar and draws umbrella
if (keyboard_check(vk_space) && global.ignorance_level > 0){
	
	if(moving){
		sprite_index = umbrella_walking;
	}else{
		sprite_index = umbrella_standing;
	}
	global.umbrella_out = true;
}else{	
	global.umbrella_out = false;
}
