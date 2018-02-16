//Variables containing the states of the keys.
pressed_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
pressed_right = keyboard_check(ord("D")) || keyboard_check(vk_right);

//Sets speed to 0 if player tries to leave the screen.
if (x - (sprite_actual_width/2) + spd <= 0 || x + (sprite_actual_width/2) + spd >= (SCREEN_WIDTH)){
	spd = 0;
}

//Increments speed accordingly when player goes right.
if (pressed_right && !pressed_left && x + (sprite_actual_width/2) + spd < (SCREEN_WIDTH)){
	moving = true;
	if (spd < global.top_spd){
		spd += inertia;
	}
	
	sprite_index = walking;
	image_xscale = 1;
}


//Increments speed accordingly when player goes left.
if (pressed_left && !pressed_right && x - (sprite_actual_width/2) > 0){
	moving = true;
	if (spd > -global.top_spd){
		spd -= inertia;
	}
	sprite_index = walking;
	image_xscale = -1;
}



//Slows player down when keys are not pressed until reaches a stop.
if (!keyboard_check(ord("A")) && !keyboard_check(ord("D")) && !keyboard_check(ord(vk_space)) && !keyboard_check(vk_left) && !keyboard_check(vk_right)){
	sprite_index = standing;
	scr_inertia();
}


//X position is updated every frame based on the above speed logic.
x += spd;

//Plays a footstep everytime the animation reaches the ground.
if(image_index >= 1 && image_index < 1.5){
	if(!audio_is_playing(snd_step)){
		var step = audio_play_sound(snd_step, 0, false);
		
		//Multiplier is between 0 and 1. A random number between 80 and 100 times .01 for a max pitch shift
		//of 20%
		audio_sound_pitch(step, (random(20) + 80) * .01);
	}


}

//Detects space bar and draws umbrella
if (keyboard_check(vk_space)){
	if(global.ignorance_level > 0){
		if(moving){
			sprite_index = umbrella_walking;
		}else{
			sprite_index = umbrella_standing;
		}
		
		global.umbrella_out = true;
		
	}else if(keyboard_check_pressed(vk_space)){
		//Play the 'out of umbrella' sound
		audio_play_sound(snd_get_cunted, 0, false);
	}
	
	if(global.ignorance_level == 0) global.umbrella_out = false;
	
}else{	
	global.umbrella_out = false;
}

//Handle the flashing when invulnerable
if(global.invulnerable && !alarm[1]){
	visible = !visible;
	with obj_dynamic_beard visible = !visible;
	global.invulnerable_flasher = !global.invulnerable_flasher;
	alarm[1] = flasher_speed * room_speed;
}



//Change sprite for moving turn
if((sign(spd) == 1 && pressed_left) || (sign(spd) == -1 && pressed_right)){
	if(global.umbrella_out && global.ignorance_level > 0) {
		sprite_index = umbrella_turning;
	}else{
		sprite_index = turning;
	}
	obj_dynamic_beard.turning = true;
}else{
	obj_dynamic_beard.turning = false;
}

//Ensure both keys at the same time produces no effect
if(pressed_right && pressed_left){

	if(global.umbrella_out && global.ignorance_level > 0){
		sprite_index = umbrella_standing;
	}else{
		sprite_index = standing;
	}
	scr_inertia();

}