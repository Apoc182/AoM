screen_save("pause.png");
instance_deactivate_all(true);
pause = sprite_add("pause.png", 0, false, true, 0, 0);
layer_background_change(layer_background_get_id(layer_get_id("bg4")),pause);
layer_hspeed(layer_get_id("bg1"),0);
layer_hspeed(layer_get_id("bg2"),0);
layer_hspeed(layer_get_id("bg3"),0);

box = instance_create_depth((GRID_SIZE * 32)/2, (GRID_SIZE * 24)/2, 50, obj_animated_box);
box.box_in = true;
box.x1_open = GRID_SIZE * 11.5
box.x2_open = GRID_SIZE * 20.5
box.y1_open = GRID_SIZE * 8
box.y2_open = GRID_SIZE * 14.5

////Pause menu
mover = 0;
menu_items = ["Resume", "Restart", "Main Menu"];
resume = false;
restart = false;
title = false;

