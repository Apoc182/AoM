//scoreboard
draw_set_color(c_black);
draw_text(64,32,global.user_name);
draw_text(448,32,"Time");

//display zeros in front of score
if(global.scr)<10{
	draw_text(64,64,"00000");
}
else if(global.scr)<100{
	draw_text(64,64,"0000");
}
else if(global.scr)<1000{
	draw_text(64,64,"000");
}
else if(global.scr)<10000{
	draw_text(64,64,"00");
}
else if(global.scr)<100000{
	draw_text(64,64,"0");
}

//display score
draw_set_halign(fa_right);
draw_text(256,64,string(global.scr));

//Make zero appear
if(timer mod 60 < 10){
	leading_zero = "0";
}else{
	leading_zero = "";
}

//Timer
draw_text(576,64, string(floor(timer/60)) + ":" + leading_zero + string(timer mod 60));
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






