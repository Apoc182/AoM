/// @description Insert description here
// You can write your code in this editor

umbrella_cooldown = false;
countdown = 4;
pressed_left = false;
pressed_right = false;
spd = 0;
isMoving = 0;
inertia = .25

//Because i invert the sprite by the x axis alot, i need a constant to track the width of the sprite
sprite_actual_width = sprite_width;

//These variables store the standing and walking sprites
walking = spr_walking;
standing = spr_default_standing;
umbrella_standing = spr_umbrella_standing;
umbrella_walking = spr_umbrella_walking;
turning = spr_turning;
umbrella_turning = spr_umbrella_turning;

//This will handle the Thor costume
if(global.is_thor){
	walking = spr_thor_walking;
	standing = spr_thor_standing;
	umbrella_standing = spr_thor_umbrella;
	umbrella_walking = spr_thor_umbrella_walking;
	turning = spr_thor_turning;
	umbrella_turning = spr_thor_umbrella_turning;
}

invulnerable_time = 2;
flasher_speed = .1;