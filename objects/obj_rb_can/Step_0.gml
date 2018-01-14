/// @description Insert description here
// You can write your code in this editor

if (instance_place(x, y, obj_default) && !picked_up){
	instance_create_depth(-10,-10,-1000,obj_rbcountdown);
	global.drop_base_speed = 0;
	global.scr += global.rbCanPickup; 
	picked_up = true;
}

if(picked_up){
	alarm[0] = 2 * room_speed;
	rising -= 1;
}