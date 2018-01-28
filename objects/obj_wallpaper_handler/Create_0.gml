//Store the background sprite for colour changing.
bg1 = layer_background_get_id(layer_get_id("bg1"));



//INPUT DESIRED CHANGES HERE

//The current RGB
current_RGB = [255, 255, 255];
RGB_1 = [0,0,0];
RGB_2 = [0,0,0];
RGB_3 = [0,0,0];
RGB_4 = [0,0,0];

//A 2D array of the upcoming coordinates
destination_RGBs[0, 0] = RGB_1[0]
destination_RGBs[0, 1] = RGB_1[1]
destination_RGBs[0, 2] = RGB_1[2]
destination_RGBs[1, 0] = RGB_2[0]
destination_RGBs[1, 1] = RGB_2[1]
destination_RGBs[1, 2] = RGB_2[2]
destination_RGBs[2, 0] = RGB_3[0]
destination_RGBs[2, 1] = RGB_3[1]
destination_RGBs[2, 2] = RGB_3[2]
destination_RGBs[3, 0] = RGB_4[0]
destination_RGBs[3, 1] = RGB_4[1]
destination_RGBs[3, 2] = RGB_4[2]

//To select the correct coordinate
destination_selector = 0;

//Easier to write
divider = global.speed_jump;

//Initialise the divider
init = true;

red_div = 0;
blue_div = 0;
green_div = 0;