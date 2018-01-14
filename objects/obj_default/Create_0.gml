/// @description Insert description here
// You can write your code in this editor

umberella_cooldown = false;
countdown = 4;
pressed_left = false;
pressed_right = false;
spd = 0;
isMoving = 0;
top_spd = 5;
inertia = .2

//Because i invert the sprite by the x axis alot, i need a constant to track the width of the sprite
sprite_actual_width = sprite_width;

//These variables store the standing and walking sprites
walking = spr_walking;
standing = spr_default_standing;
umberella_standing = spr_umberella_standing;
umberella_walking = spr_umberella_walking;

//This will handle the Thor costume
if(global.is_thor){
	standing = spr_thor_standing;
	umberella_standing = spr_thor_umberella;
	
	//This is for when we have the walking sprite
	//walking = spr_thor_umberella;
}