with(obj_drop) {
	
	if(stopper > 0) stopper -= .01;

	
}

if(audio_is_playing(snd_title) && turn_off_title_song){

	turn_off_title_song = false;
	audio_sound_gain(snd_title, 0, 2000);
	
}


if(freeze_counter == 2 * room_speed){
	audio_play_sound(snd_dead, 0, false);
}

if(freeze_counter > 2 * room_speed) obj_default.y -= 1;
if(freeze_counter > 4 * room_speed) room_goto(game_over);

if(alarm[4])alarm[4] = 0;
if(alarm[0])alarm[0] = 0;
if(alarm[1])alarm[1] = 0;
if(global.invulnerable) global.invulnerable = false;
freeze_counter++;
