/// @description Insert description here
// You can write your code in this editor


draw_text(160, 320, "Please enter your name:");
draw_text(160, 384, global.user_name);
if(string_length(global.user_name) == 12){
		draw_text(160, 448, "Maximum length reached!");
}