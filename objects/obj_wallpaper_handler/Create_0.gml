//Store the background sprite for colour changing.
bg1 = layer_background_get_id(layer_get_id("bg1"));
bg2 = layer_background_get_id(layer_get_id("bg2"));
bg3 = layer_background_get_id(layer_get_id("bg3"));


//INPUT DESIRED CHANGES HERE

//The current RGB
starting_RGB = [128, 188, 248];
current_RGB = starting_RGB;

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
destination_RGBs[0, 2] = 252

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

destination_RGBs[8, 0] = 112
destination_RGBs[8, 1] = 0
destination_RGBs[8, 2] = 0

destination_RGBs[9, 0] = 96
destination_RGBs[9, 1] = 0
destination_RGBs[9, 2] = 0

destination_RGBs[10, 0] = 80
destination_RGBs[10, 1] = 0
destination_RGBs[10, 2] = 0

destination_RGBs[11, 0] = 64
destination_RGBs[11, 1] = 0
destination_RGBs[11, 2] = 0

destination_RGBs[12, 0] = 56
destination_RGBs[12, 1] = 0
destination_RGBs[12, 2] = 0

destination_RGBs[13, 0] = 48
destination_RGBs[13, 1] = 0
destination_RGBs[13, 2] = 0

destination_RGBs[14, 0] = 40
destination_RGBs[14, 1] = 0
destination_RGBs[14, 2] = 0

destination_RGBs[15, 0] = 32
destination_RGBs[15, 1] = 0
destination_RGBs[15, 2] = 0

destination_RGBs[16, 0] = 24
destination_RGBs[16, 1] = 0
destination_RGBs[16, 2] = 0

destination_RGBs[17, 0] = 16
destination_RGBs[17, 1] = 0
destination_RGBs[17, 2] = 0

destination_RGBs[18, 0] = 8
destination_RGBs[18, 1] = 0
destination_RGBs[18, 2] = 0

destination_RGBs[19, 0] = 0
destination_RGBs[19, 1] = 0
destination_RGBs[19, 2] = 0

//To select the correct coordinate
destination_selector = 0;
//Easier to write
divider = global.speed_jump*2;

//Initialise the divider
init = true;

red_div = 0;
blue_div = 0;
green_div = 0;