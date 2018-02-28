/// @description Insert description here
// You can write your code in this editor

draw_self();

if(blinking) draw_sprite(spr_kirstyns_eyelids, 0, x, y);

frame_counter++;

if(frame_counter == room_speed * .2){
	blinking = false;
	frame_counter = 0;
}