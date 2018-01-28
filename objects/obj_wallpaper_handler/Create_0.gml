//Store the background sprite for colour changing.
bg1 = layer_background_get_id(layer_get_id("bg1"));



//INPUT DESIRED CHANGES HERE

//The current RGB
current_RGB = [255, 255, 255];

//A 2D array of the upcoming coordinates
/*

	Add to the end of the below 2d array to create new colours to change to.
	Key:
	destination_RGBs[n, 0] = Red
	destination_RGBs[n, 1] = Green
	destination_RGBs[n, 2] = Blue


*/

destination_RGBs[0, 0] = 255
destination_RGBs[0, 1] = 191
destination_RGBs[0, 2] = 191
destination_RGBs[1, 0] = 255
destination_RGBs[1, 1] = 127
destination_RGBs[1, 2] = 127
destination_RGBs[2, 0] = 255
destination_RGBs[2, 1] = 63
destination_RGBs[2, 2] = 63
destination_RGBs[3, 0] = 255
destination_RGBs[3, 1] = 0
destination_RGBs[3, 2] = 0

//To select the correct coordinate
destination_selector = 0;
//Easier to write
divider = global.speed_jump;

//Initialise the divider
init = true;

red_div = 0;
blue_div = 0;
green_div = 0;