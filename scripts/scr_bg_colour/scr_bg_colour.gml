/* 

So this script will set the background if the current and destination colour are not the same. If they are,
ir returns true;

Usage:
if(scr_bg_colour(array1, array2)){
	array2 = next2
}


*/

///@arg0 currentArrayRGB;
///@arg1 destinationArrayRGB;
///@arg2 bgObject;
var divider = global.speed_jump;

var current_colour = argument0;
var destination_colour = argument1;
var background = argument2;
var next_frame_colour = [];

//Are these colours the same? If so, return true.
if(current_colour[0] == destination_colour[0] &&
   current_colour[1] == destination_colour[1] &&
   current_colour[1] == destination_colour[1]){
		return current_colour;
	
   }
//Check current greater than   
if(current_colour[0] > destination_colour[0]) next_frame_colour[0] = current_colour[0] - ((current_colour[0] - destination_colour[0]) / divider);
if(current_colour[1] > destination_colour[1]) next_frame_colour[1] = current_colour[1] - ((current_colour[1] - destination_colour[0]) / divider);
if(current_colour[2] > destination_colour[2]) next_frame_colour[2] = current_colour[2] - ((current_colour[2] - destination_colour[0]) / divider);

//Check current less than   
if(current_colour[0] < destination_colour[0]) next_frame_colour[0] = current_colour[0] + ((current_colour[0] + destination_colour[0] / divider));
if(current_colour[1] < destination_colour[1]) next_frame_colour[1] = current_colour[1] + ((current_colour[1] + destination_colour[0] / divider));
if(current_colour[2] < destination_colour[2]) next_frame_colour[2] = current_colour[2] + ((current_colour[2] + destination_colour[0] / divider));


//Change BG colour
layer_background_blend(background, make_color_rgb(next_frame_colour[0], next_frame_colour[1], next_frame_colour[2]));
show_debug_message(string(next_frame_colour[0]))
return next_frame_colour;




//if(rgb_read[0] < r_inc) rgb_read[0] += r_inc;
//if(rgb_read[1] < g_inc) rgb_read[1] += g_inc;
//if(rgb_read[2] < b_inc) rgb_read[2] += b_inc;

//if(rgb_read[0] > r_inc) rgb_read[0] -= r_inc;
//if(rgb_read[1] > g_inc) rgb_read[1] -= g_inc;
//if(rgb_read[2] > b_inc) rgb_read[2] -= b_inc;


//if(rgb_read[0] == r_inc){
//	r_inc = rgb_end[0] / global.speed_jump;
//	g_inc = rgb_end[1] / global.speed_jump;
//	b_inc = rgb_end[2] / global.speed_jump;
//}