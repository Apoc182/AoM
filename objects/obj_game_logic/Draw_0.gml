//scoreboard
draw_set_color(c_black);
draw_text(32,32,global.user_name);
draw_text(448,32,"Time");

//display zeros in front of score

if(global.scr < 10) zeros_in_front = "00000";
else if(global.scr < 100) zeros_in_front = "0000";
else if(global.scr < 1000) zeros_in_front = "000";
else if(global.scr < 10000) zeros_in_front = "00";
else if (global.scr < 100000) zeros_in_front = "0";
else zeros_in_front = "";

//display score
draw_text(32,64,zeros_in_front + string(global.scr));

//Make zero appear
if(timer mod 60 < 10){
	leading_zero = "0";
}else{
	leading_zero = "";
}

//Timer
draw_text(448,64, string(floor(timer/60)) + ":" + leading_zero + string(timer mod 60));
draw_set_halign(fa_left)

//Draw the lives on the screen
for (var i = 0; i < global.player_lives; i++){
	draw_sprite(spr_lives, -1, (816) - (64 * i), 64);
}

//Display beard unlocked.
if(beard_unlocked){
	draw_text(obj_default.x - obj_default.sprite_width/2 , obj_default.y - obj_default.sprite_height/2 - 20, "New beard Unlocked!");
	if(!alarm[5]){
		alarm[5] = room_speed;
	}
}

//Ignorancometre

draw_sprite(spr_ignorancometre, global.ignorance_level, 
			992, 
			512);







