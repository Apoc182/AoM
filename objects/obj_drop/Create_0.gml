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