/// @description Insert description here
// You can write your code in this editor

if(!global.tutorial_on){
	instance_destroy();
}

tutorial_text = [

				 "Welcome to Miller's dream!\nHere, you must avoid the barrage\nof reasonable requests from your\nlovely wife requesting you wake\n to continue sleeping.\nDrops on your head take life, black ones on your\numbrella gain points.\nHow long can you last?",
				 "This area displays your name,\ncurrent score and personal best so far.", 
				 "This is how long you have lasted.",
				 "This bar is your 'ignorancometre'\nThis tells you how much power\nyour umbrella of ignorance has left\n(Space)",
				 "These Smokey Joe's Hot Sauce bottles\nRepresent your lives",
				 "Being this ignorant is not easy... Good luck!\n(PRESS SPACE TO BEGIN!)"];


//Dummy locations
arrow_pos_array[0, 0] = 10 * GRID_SIZE * -1
arrow_pos_array[0, 1] = 4 * GRID_SIZE * -1

//Name, score and max
arrow_pos_array[1, 0] = 10 * GRID_SIZE
arrow_pos_array[1, 1] = 4 * GRID_SIZE

//Timer
arrow_pos_array[2, 0] = 15 * GRID_SIZE
arrow_pos_array[2, 1] = 3 * GRID_SIZE

//Umbrella bar
arrow_pos_array[3, 0] = 19 * GRID_SIZE
arrow_pos_array[3, 1] = 4 * GRID_SIZE

//Hot sauce
arrow_pos_array[4, 0] = 22 * GRID_SIZE
arrow_pos_array[4, 1] = 4 * GRID_SIZE

//Dummy locations
arrow_pos_array[5, 0] = 22 * GRID_SIZE * -1
arrow_pos_array[5, 1] = 4 * GRID_SIZE * -1

//Dummy locations
arrow_pos_array[6, 0] = 22 * GRID_SIZE * -1
arrow_pos_array[6, 1] = 4 * GRID_SIZE * -1


current_text_pos = 0;
alpha_variance = .01;

fade_in = false;
fade_out = false;

arrow_xscale = .5
arrow_yscale = .5

arrow_tip_x = arrow_pos_array[current_text_pos, 0];
arrow_tip_y = arrow_pos_array[current_text_pos, 1];

rotation_from_right_counterclockwise = 110;
space_can_progress = false;

alarm_delay = 2;
alarm[0] = alarm_delay * room_speed;