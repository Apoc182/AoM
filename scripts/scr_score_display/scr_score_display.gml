//Updates the score and returns the correct string for the score splash to display.
global.scr += argument0;
if(argument0 > 0){
	return ("+" + string(argument0));
}else{
	return (string(argument0));
}