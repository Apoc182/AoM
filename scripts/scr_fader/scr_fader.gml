///scr_fader(target,depth,color,speed,state,alpha)
/// @arg target
/// @arg depth
/// @arg color

if(argument_count > 2){
	fade_depth = argument[2];
}else{
	fade_depth = -500;
}

if(!instance_exists(obj_fader)){
	instance_create_depth(0, 0, fade_depth, obj_fader)
	obj_fader.target = argument[0];
if(argument_count > 1) obj_fader.fade_color = argument[1];
if(argument_count > 3) obj_fader.fade_speed = argument[3];
if(argument_count > 4) obj_fader.fade_state = argument[4];
if(argument_count > 5) obj_fader.fade_alpha = argument[5];
}