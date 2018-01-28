


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
layer_background_blend(bg1, make_color_rgb(current_RGB[0], current_RGB[1], current_RGB[2]));