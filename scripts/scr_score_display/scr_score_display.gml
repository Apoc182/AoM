//Updates the score and returns the correct string for the score splash to display.
var multiplied_scr = argument0 * global.black_drop_multiplier;

global.scr += multiplied_scr;
if(argument0 > 0){
	return ("+" + string(multiplied_scr));
}else{
	return (string(argument0));
}