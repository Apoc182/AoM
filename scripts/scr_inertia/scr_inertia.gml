//If moving left
if (spd < 0){
	spd += inertia;
}


//if moving right
if (spd > 0){
	spd -= inertia;
}
	
//Sets to zero when a limit is reached.
if (spd >= -.1 && spd <= .1 ){
	spd = 0;
}
	