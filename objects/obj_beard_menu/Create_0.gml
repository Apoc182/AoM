//Location for beard selecting
//The default place for the cursor



//Default location of cursor

beard_index = scr_get_current_beard("index");

highlighted_beard = beard_index;




confirm = false;

box = instance_create_depth(0, 0, 0, obj_animated_box);

box.x1_open = GRID_SIZE * 15
box.x2_open = GRID_SIZE * 31
box.y1_open = GRID_SIZE * 3.5
box.y2_open = GRID_SIZE * 20
box.x1_closed = GRID_SIZE * 22
box.x2_closed = SCREEN_HEIGHT
box.x1 = GRID_SIZE * 22
box.x2 = SCREEN_HEIGHT
box.box_in = true;

//Make blinking happen.
alarm[0] = room_speed * random(5);
blinking = false;
frame_count = 0;

//Make the menu scroll
menu_max_list = 11;

if(1 + highlighted_beard > menu_max_list){
	scroller = 1 + highlighted_beard- menu_max_list;
	highlighted_beard -= scroller;
}else{
	scroller = 0;
}

final_beard = false;
previous_highlighted = highlighted_beard;

//Animate the barber pole
animation_frame = 0;
animation_fps = 10;

//Animate the arrows
animation_frame_arrow = 0;
animation_fps_arrow = 3;
