/// @description Speed_Increaser
// You can write your code in this editor

if(global.time_multiplier < 2){
	global.time_multiplier += .5;
}


//Check to make sure the drop speed is not zero and take it down one.
if(drop_speed > .1 * room_speed){
	drop_speed -= .1 * room_speed;
}else{
	drop_speed = .1 * room_speed;
}
alarm[3] = speed_jump;