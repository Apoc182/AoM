if(!instance_exists(obj_fader)){
	instance_create_depth(0,0,-500,obj_fader)
	obj_fader.target = rm_title;
}