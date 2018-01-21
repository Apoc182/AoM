/// @description Insert description here
// You can write your code in this editor



	x = obj_default.x;
	y = obj_default.y;


	truncate_value = frac(obj_default.image_index);

	frame = obj_default.image_index - truncate_value;

	//First, lets mirror the default sprites x_scale.
	image_xscale = obj_default.image_xscale;


	//Then, lets move the beard for the bobbing effect
	if(frame == 1){
		y = obj_default.y + 4;
	}
	
	if (frame == 3){
		y = obj_default.y - 4;
}




