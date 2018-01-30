//Pause toggle

if(global.tutorial_on){
	instance_destroy();
}else{
	paused = false;
}


//Pause menu
mover = 0;
menu_items = ["Return", "Restart", "Main Menu"];
text_height = sprite_get_height(spr_nesfont);