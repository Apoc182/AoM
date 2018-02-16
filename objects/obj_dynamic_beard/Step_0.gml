/// @description Insert description here
// You can write your code in this editor



x = snap_to.x;
y = snap_to.y;


truncate_value = frac(snap_to.image_index);

frame = snap_to.image_index - truncate_value;

//First, lets mirror the default sprites x_scale.
image_xscale = snap_to.image_xscale;


//Then, lets move the beard for the bobbing effect
if(!turning){

	if(frame == 1){
		y = snap_to.y + 4;
	}
	
	if (frame == 3){
		y = snap_to.y - 4;
	}
}

//Handles talking. In order to use, set 'talking' to true and 'cur_voice' to the voiceline being said.
//NOTE: if it is one long, drawn out word, set one word to true.

if(talking){
	if(one_word){
		image_index = 1;
	}else{
		image_speed = 1;
	}
}
	
if(!is_undefined(cur_voice) && !audio_is_playing(cur_voice)){

	image_speed = 0;
	image_index = 0;
	talking = false;
	cur_voice = undefined;
	one_word = false;

}



