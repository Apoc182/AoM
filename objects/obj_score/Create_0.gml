//get score to display
scr = scr_score_display(global.black_drop_umbrella);

//fade out
fade = false;
alpha = 1;

//lightning effect
lightning = true;
lightning_frame = 0;

//set alarm for score to disappear
alarm[0] = 2 * room_speed;

//set alarm for lightninig effect to stop
alarm[1] = room_speed/4;

//set alarm for thunder sound to play
alarm[2] = random(room_speed* 2);