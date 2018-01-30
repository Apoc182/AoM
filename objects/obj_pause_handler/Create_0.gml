//Pause toggle

if(global.tutorial_on){
	instance_destroy();
}else{
	paused = false;
}

box = instance_create_depth(window_get_width()/2, window_get_height()/2, 500, obj_animated_box);
box.visible = false;


//Pause menu
mover = 0;
menu_items = ["Resume", "Restart", "Main Menu"];
text_height = sprite_get_height(spr_nesfont)*2;
quitting = false;

box.x1_open = GRID_SIZE * 11.5
box.x2_open = GRID_SIZE * 20.5
box.y1_open = GRID_SIZE * 8
box.y2_open = GRID_SIZE * 14.5