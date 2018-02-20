//Updates the score and returns the correct string for the score splash to display.
var multiplied_scr = clamp(round(argument0 * (1 + global.black_drop_multiplier / 10)),0,global.black_drop_umbrella*2);

global.scr += multiplied_scr;
if(argument0 > 0){
	return ("+" + string(multiplied_scr));
}else{
	return (string(argument0));
}