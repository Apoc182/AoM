//scoreboard
draw_set_color(c_black);
draw_text(GRID_SIZE, GRID_SIZE, global.user_name);
draw_text(15 * GRID_SIZE, GRID_SIZE,"Time");

//display zeros in front of score

if(global.scr < 10) zeros_in_front = "00000";
else if(global.scr < 100) zeros_in_front = "0000";
else if(global.scr < 1000) zeros_in_front = "000";
else if(global.scr < 10000) zeros_in_front = "00";
else if (global.scr < 100000) zeros_in_front = "0";
else zeros_in_front = "";

//display zeros in front of high score

if(global.max_score < 10) zeros_in_front_again = "00000";
else if(global.max_score < 100) zeros_in_front_again = "0000";
else if(global.max_score < 1000) zeros_in_front_again = "000";
else if(global.max_score < 10000) zeros_in_front_again = "00";
else if (global.max_score < 100000) zeros_in_front_again = "0";
else zeros_in_front_again = "";

//display score
draw_text(8 * GRID_SIZE, GRID_SIZE, "High Score");
draw_text(3 * GRID_SIZE, 2 * GRID_SIZE, zeros_in_front + string(global.scr));
draw_text(10 * GRID_SIZE, 2 * GRID_SIZE, zeros_in_front_again + string(global.max_score));

//Make zero appear
if(timer mod 60 < 10){
	leading_zero = "0";
}else{
	leading_zero = "";
}

//Timer
draw_text(15 * GRID_SIZE, 2 * GRID_SIZE, string(floor(timer/60)) + ":" + leading_zero + string(timer mod 60));
draw_set_halign(fa_left)

//Draw the lives on the screen
for (var i = 0; i < global.player_lives; i++){
	draw_sprite(spr_lives, 0, (26.5 * GRID_SIZE) - ((GRID_SIZE) * i), 2 * GRID_SIZE);
}

//Display beard unlocked.
if(beard_unlocked){
	draw_set_halign(fa_center);
	draw_set_color(colours[random(array_length_1d(colours))]);
	if(first_unlocked){
		x_co = obj_default.x - obj_default.sprite_width/2;
		y_co = obj_default.y- obj_default.sprite_height/2 - 20;
		draw_text(x_co, y_co, "New beard Unlocked!");
		first_unlocked = false;
	}else{
		draw_text(x_co, y_co - floater, "New beard Unlocked!");
		floater++;
	}
	
	
	if(!alarm[5]){
		alarm[5] = room_speed;
	}
	
	draw_set_halign(fa_left);
	draw_set_color(c_black)
}


//Ignorancometre

if(global.ignorance_level > previous_ignorance_level){
	previous_ignorance_level += bar_refill_speed;
}else{
	previous_ignorance_level = global.ignorance_level;
}

draw_sprite(spr_ignorancometre, previous_ignorance_level, 
			21 * GRID_SIZE, 
			2 * GRID_SIZE);







