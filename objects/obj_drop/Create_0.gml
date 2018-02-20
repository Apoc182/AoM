//randomly choose a colour from the array
this_colour = global.colour_array[random(array_length_1d(global.colour_array))];

//if Ed Sheeren display Thinking Out Loud lyrics
if(scr_get_current_beard(BRD_SPRITE_NAME) == spr_ginger){
	this_text = global.thinking_out_loud[random(global.thinking_out_loud_length)];
//otherwise display Kirstyn whinging strings
}else{
	this_text = global.kirsten_whinging[random(global.kirsten_whinging_length)];
}

this_speed =  random(4) + global.time_multiplier;

is_thunder = false;
lightning_frame = 0;
thunder_timer = room_speed/4
counter = 0;

//For the freezing effect
stopper = 1;

//combo array
snd_combo_array[0] = snd_combo1;
snd_combo_array[1] = snd_combo2;
snd_combo_array[2] = snd_combo3;
snd_combo_array[3] = snd_combo4;
snd_combo_array[4] = snd_combo5;
snd_combo_array[5] = snd_combo6;
snd_combo_array[6] = snd_combo7;
snd_combo_array[7] = snd_combo8;
snd_combo_array[8] = snd_combo9;
snd_combo_array[9] = snd_combo10;