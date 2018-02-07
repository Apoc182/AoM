//Store the background sprite for colour changing.
bg1 = layer_background_get_id(layer_get_id("bg1"));
bg2 = layer_background_get_id(layer_get_id("bg2"));
bg3 = layer_background_get_id(layer_get_id("bg3"));


//INPUT DESIRED CHANGES HERE

//The current RGB
current_RGB = [128, 188, 248];

//A 2D array of the upcoming coordinates
/*

	Add to the end of the below 2d array to create new colours to change to.
	Key:
	destination_RGBs[n, 0] = Red
	destination_RGBs[n, 1] = Green
	destination_RGBs[n, 2] = Blue


*/

destination_RGBs[0, 0] = 128
destination_RGBs[0, 1] = 188
destination_RGBs[0, 2] = 248

destination_RGBs[1, 0] = 128
destination_RGBs[1, 1] = 248
destination_RGBs[1, 2] = 248

destination_RGBs[2, 0] = 128
destination_RGBs[2, 1] = 248
destination_RGBs[2, 2] = 128

destination_RGBs[3, 0] = 248
destination_RGBs[3, 1] = 248
destination_RGBs[3, 2] = 128

destination_RGBs[4, 0] = 248
destination_RGBs[4, 1] = 128
destination_RGBs[4, 2] = 128

destination_RGBs[5, 0] = 248
destination_RGBs[5, 1] = 64
destination_RGBs[5, 2] = 64

destination_RGBs[6, 0] = 248
destination_RGBs[6, 1] = 0
destination_RGBs[6, 2] = 0

destination_RGBs[7, 0] = 128
destination_RGBs[7, 1] = 0
destination_RGBs[7, 2] = 0

destination_RGBs[8, 0] = 64
destination_RGBs[8, 1] = 0
destination_RGBs[8, 2] = 0

//To select the correct coordinate
destination_selector = 0;
//Easier to write
divider = global.speed_jump*2;

//Initialise the divider
init = true;

red_div = 0;
blue_div = 0;
green_div = 0;