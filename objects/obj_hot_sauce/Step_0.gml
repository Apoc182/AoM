/// @description Insert description here
// You can write your code in this editor

if (instance_place(x, y, obj_default) && !picked_up){
	audio_play_sound(snd_gulp, 0, false);
	picked_up = true;
	if(global.player_lives < 3){
		global.player_lives++;
	}
}

if(picked_up){
	alarm[0] = 2 * room_speed;
	rising -= 1;
}