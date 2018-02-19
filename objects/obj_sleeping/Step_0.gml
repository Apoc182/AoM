if(!room = game_over) exit;

if(instance_exists(obj_zzz)){

	if(point_distance(x, y, GRID_SIZE * 14, GRID_SIZE * 19) > 4){
		move_towards_point(GRID_SIZE * 14, GRID_SIZE * 19, 4);
	}else{
		speed = 0;
		obj_zzz.x = GRID_SIZE * 14.5;
		obj_zzz.y = GRID_SIZE * 16;
		obj_zzz.sprite_index = spr_z;
	}
	if(obj_zzz.sprite_index == 12){
		obj_zzz.sprite_index = spr_zzz;
	}
}
