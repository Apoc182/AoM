//Pause toggle

if(global.tutorial_on){
	instance_destroy();
}else{
	paused = false;
}

box = instance_create_depth(window_get_width()/2, window_get_height()/2, -1, obj_animated_box);
box.visible = false;


//Pause menu
mover = 0;
menu_items = ["Return", "Restart", "Main Menu"];
text_height = sprite_get_height(spr_nesfont);
quitting = false;