/// @description Insert description here
// You can write your code in this editor

if (instance_place(x, y, obj_default) && global.player_lives){
	audio_play_sound(snd_gulp, 0, false);
	if(global.player_lives < max_lives_multiplier){
		global.player_lives += 6;
		if(global.player_lives > max_lives_multiplier) global.player_lives = max_lives_multiplier;
		scr_play_fill(global.player_lives);
	}
	
	instance_destroy();
}

