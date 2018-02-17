/// @description Insert description here
// You can write your code in this editor

if (instance_place(x, y, obj_default)){
	audio_play_sound(snd_gulp, 0, false);
	scr_play_fill(global.player_lives);
	if(global.player_lives < max_lives_multiplier){
		global.player_lives += 6;
		if(global.player_lives > max_lives_multiplier) global.player_lives = max_lives_multiplier;
	}
	
	instance_destroy();
}

