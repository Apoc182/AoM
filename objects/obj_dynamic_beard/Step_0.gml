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



