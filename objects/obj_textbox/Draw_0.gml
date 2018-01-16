/// @description Insert description here
// You can write your code in this editor


draw_text(x, y-20, "Please enter your name:");
draw_text(x, y, global.user_name);
if(string_length(global.user_name) == 12){
		draw_text(x, y+20, "Maximum length reached.");
}