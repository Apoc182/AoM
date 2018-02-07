


if(current_RGB[0] == destination_RGBs[destination_selector, 0] &&
   current_RGB[1] == destination_RGBs[destination_selector, 1] &&
   current_RGB[2] == destination_RGBs[destination_selector, 2] &&
   destination_selector < array_height_2d(destination_RGBs) - 1){
	destination_selector++;
	init = true;
   }
   

if(init){
	
	
	
	
	red_div =  (current_RGB[0] - destination_RGBs[destination_selector, 0]) / divider;
	green_div = (current_RGB[1] - destination_RGBs[destination_selector, 1]) / divider;
	blue_div = (current_RGB[2] - destination_RGBs[destination_selector, 2]) / divider;

	if(sign(red_div) == -1) red_div *= -1;
	if(sign(green_div) == -1) green_div *= -1;
	if(sign(blue_div) == -1) blue_div *= -1;
	
	init = false;

}

if(current_RGB[0] > destination_RGBs[destination_selector, 0]) current_RGB[0] = current_RGB[0] - red_div;
if(current_RGB[1] > destination_RGBs[destination_selector, 1]) current_RGB[1] = current_RGB[1] - green_div;
if(current_RGB[2] > destination_RGBs[destination_selector, 2]) current_RGB[2] = current_RGB[2] - blue_div;

//Check current less than   
if(current_RGB[0] < destination_RGBs[destination_selector, 0]) current_RGB[0] = current_RGB[0] + red_div;
if(current_RGB[1] < destination_RGBs[destination_selector, 1]) current_RGB[1] = current_RGB[1] + green_div;
if(current_RGB[2] < destination_RGBs[destination_selector, 2]) current_RGB[2] = current_RGB[2] + blue_div;


//Change BG colour
if(!global.tutorial_on){
	layer_background_blend(bg1, make_color_rgb(current_RGB[0], current_RGB[1], current_RGB[2]));
	layer_background_blend(bg2, make_color_rgb((current_RGB[0]*3+starting_RGB[0])/4, (current_RGB[1]*3+starting_RGB[1])/4, (current_RGB[2]*3+starting_RGB[2])/4));
	layer_background_blend(bg3, make_color_rgb((current_RGB[0]+starting_RGB[0])/2, (current_RGB[1]+starting_RGB[1])/2, (current_RGB[2]+starting_RGB[2])/2));
}else{
	layer_background_blend(bg1, make_color_rgb(starting_RGB[0], starting_RGB[1], starting_RGB[2]));
	layer_background_blend(bg2, make_color_rgb(starting_RGB[0], starting_RGB[1], starting_RGB[2]));
	layer_background_blend(bg3, make_color_rgb(starting_RGB[0], starting_RGB[1], starting_RGB[2]));
}