screen_save("pause.png");
instance_deactivate_all(true);
instance_activate_object(obj_music);
audio_pause_all();
pause = sprite_add("pause.png", 0, false, true, 0, 0);
layer_background_change(layer_background_get_id(layer_get_id("pause_screen")), pause);
layer_background_change(layer_background_get_id(layer_get_id("pause_overlay")), pause_overlay);
layer_hspeed(layer_get_id("bg1"),0);
layer_hspeed(layer_get_id("bg2"),0);
layer_hspeed(layer_get_id("bg3"),0);


box = instance_create_depth((SCREEN_WIDTH)/2, (SCREEN_HEIGHT)/2, -400, obj_animated_box);
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
previous_mover = mover;

