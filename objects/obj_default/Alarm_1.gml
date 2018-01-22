/// @description Invulnerable flasher
// You can write your code in this editor

visible = !visible;
with obj_dynamic_beard visible = !visible;
global.invulnerable_flasher = !global.invulnerable_flasher;
if(global.invulnerable){
	alarm[1] = flasher_speed * room_speed;
}else{

	visible = true;
	with obj_dynamic_beard visible = true;
	global.invulnerable_flasher = !global.invulnerable_flasher;
}