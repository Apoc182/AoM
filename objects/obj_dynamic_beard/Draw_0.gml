/// @description Insert description here
// You can write your code in this editor



//To confirm this is first calculated
truncate_value = frac(obj_default.image_index);
frame = obj_default.image_index - truncate_value;
y_increment = obj_default.y;

if(blinking && !global.invulnerable_flasher && !turning){
	if(frame == 1){
		y_increment = obj_default.y + 4;
	}
	
	if(frame == 3){
		y_increment = obj_default.y - 4;
	}
	
	if(image_xscale == 1){
		draw_sprite_ext(spr_blink_miller, 0, obj_default.x, y_increment, 1, 1, 0, c_white, 1);
	}else{
		draw_sprite_ext(spr_blink_miller, 0, obj_default.x, y_increment, -1, 1, 0, c_white, 1);
	}
	frame_counter++;
	if(frame_counter == room_speed * .2){
		blinking = false;
		frame_counter = 0;
	}
}
draw_self();