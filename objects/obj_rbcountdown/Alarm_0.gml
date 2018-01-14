/// @description Insert description here
// You can write your code in this editor

timer -= 1;
alarm[0] = 1 * room_speed;

if(timer == 0){
	instance_destroy();
}