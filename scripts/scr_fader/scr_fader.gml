///scr_fader(target,depth,color,speed,state,alpha)
/// @arg target
/// @arg depth
/// @arg color

if(argument_count > 2){
	var fade_depth = argument[2];
}else{
	var fade_depth = -500;
}

if(!instance_exists(obj_fader)){
	var fader = instance_create_depth(0, 0, fade_depth, obj_fader)
	fader.target = argument[0];
if(argument_count > 1) fader.fade_color = argument[1];
if(argument_count > 3) fader.fade_speed = argument[3];
if(argument_count > 4) fader.fade_state = argument[4];
if(argument_count > 5) fader.fade_alpha = argument[5];
}