//scoreboard
draw_set_color(c_black);
draw_text(global.grid_size, global.grid_size, global.user_name);
draw_text(14 * global.grid_size, global.grid_size,"Time");

//display zeros in front of score

if(global.scr < 10) zeros_in_front = "00000";
else if(global.scr < 100) zeros_in_front = "0000";
else if(global.scr < 1000) zeros_in_front = "000";
else if(global.scr < 10000) zeros_in_front = "00";
else if (global.scr < 100000) zeros_in_front = "0";
else zeros_in_front = "";

//display score
draw_text(global.grid_size, 2 * global.grid_size, zeros_in_front + string(global.scr));

//Make zero appear
if(timer mod 60 < 10){
	leading_zero = "0";
}else{
	leading_zero = "";
}

//Timer
draw_text(14 * global.grid_size, 2 * global.grid_size, string(floor(timer/60)) + ":" + leading_zero + string(timer mod 60));
draw_set_halign(fa_left)

//Draw the lives on the screen
for (var i = 0; i < global.player_lives; i++){
	draw_sprite(spr_lives, 0, (26 * global.grid_size) - ((2 * global.grid_size) * i), 2 * global.grid_size);
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

draw_sprite(spr_ignorancometre, global.ignorance_level, 
			20 * global.grid_size, 
			2 * global.grid_size);







