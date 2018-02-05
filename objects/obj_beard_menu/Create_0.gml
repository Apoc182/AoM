//Location for beard selecting
//The default place for the cursor



//Default location of cursor

beard_index = scr_get_current_beard("index");

mover = beard_index;

confirm = false;

box = instance_create_depth(0, 0, 0, obj_animated_box);

box.x1_open = GRID_SIZE * 15
box.x2_open = GRID_SIZE * 31
box.y1_open = GRID_SIZE * 4
box.y2_open = GRID_SIZE * 20
box.x1_closed = GRID_SIZE * 22
box.x2_closed = GRID_SIZE * 24
box.x1 = GRID_SIZE * 22
box.x2 = GRID_SIZE * 24
box.box_in = true;

//Make blinking happen.
alarm[0] = room_speed * random(5);
blinking = false;
frame_count = 0;