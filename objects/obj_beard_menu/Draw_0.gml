//This will draw all the beards

draw_set_halign(fa_center);
draw_text(GRID_SIZE * 16, GRID_SIZE * 2, "Select your Man-Muff");






//Draws the barber scene and the miller sprite.
draw_sprite(spr_barberbg, 0, GRID_SIZE * 2, GRID_SIZE * 6);
draw_sprite(spr_default_standing, 0, GRID_SIZE * 7, GRID_SIZE * 13.5);
draw_sprite_ext(spr_default_standing, 0, GRID_SIZE * 11, GRID_SIZE * 13.5, -1,1,0,c_white,1);


//Draw the paperbag overhead when selecting an unlocked beard.
if(highlighted_beard + scroller >= scr_number_beards_unlocked()){

	draw_sprite_ext(spr_paper_bag, 0, GRID_SIZE * 11, GRID_SIZE * 13.5,-1,1,0,c_white,1);
	draw_sprite(spr_paper_bag, 0, GRID_SIZE * 7, GRID_SIZE * 13.5);
	
	//Here we can mention locked instead of description.
	draw_text(GRID_SIZE * 16, GRID_SIZE * 21, "LOCKED");
	
	//Blinker. I thought it would be funny if the paper bag blinked too.
	if(blinking){
		draw_sprite(spr_paper_bag_blink, 0, GRID_SIZE * 7, GRID_SIZE * 13.5);
		draw_sprite_ext(spr_paper_bag_blink, 0, GRID_SIZE * 11, GRID_SIZE * 13.5, -1,1,0,c_white,1);
	}

}else{
	
	//Blinker. We only need to do this if there is no paper bag.
	if(blinking){
		draw_sprite(spr_blink_miller, 0, GRID_SIZE * 7, GRID_SIZE * 13.5);
		draw_sprite_ext(spr_blink_miller, 0, GRID_SIZE * 11, GRID_SIZE * 13.5, -1,1,0,c_white,1);
	}
	
	//Draw the beards if the highlighted_beard isnt on one of the locked beards.
	draw_sprite_ext(ds_grid_get(global.all_beard_properties, highlighted_beard + scroller, BRD_SPRITE_NAME), 0, GRID_SIZE * 11, GRID_SIZE * 13.5,-1,1,0,c_white,1);
	draw_sprite(ds_grid_get(global.all_beard_properties, highlighted_beard + scroller, BRD_SPRITE_NAME), 0, GRID_SIZE * 7, GRID_SIZE * 13.5);
	
	//We only want a description if the bag is not on the head.
	draw_text(GRID_SIZE * 16, GRID_SIZE * 21, ds_grid_get(global.all_beard_properties, highlighted_beard + scroller, BRD_BEARD_DESCRIPTION));
	
	

}


//Draws the mirror last.
draw_sprite(spr_barber, 0, GRID_SIZE * 2, GRID_SIZE * 6);





if(box.open && !confirm){
	for(i = 0; i < menu_max_list; i++){
	
		if(highlighted_beard == i){
			draw_set_color(c_white);
		}else{
			draw_set_color(make_color_rgb(124, 124, 124));
		}
		
		if(ds_grid_get(global.all_beard_properties, scroller + i, BRD_UNLOCKED)){
			draw_set_halign(fa_left);
			draw_text(GRID_SIZE * 17.5, GRID_SIZE * 6.5 + (i * GRID_SIZE), ds_grid_get(global.all_beard_properties, scroller + i, BRD_BEARD_NAME))
		}else{
			draw_set_halign(fa_left);
			draw_text(GRID_SIZE * 17.5, GRID_SIZE * 6.5 + (i * GRID_SIZE), string(ds_grid_get(global.all_beard_properties, scroller + i, BRD_SCORE_TO_UNLOCK)) + " points to unlock")
		}
	}

	//For 'more' arrows

	//Scroll down
	if(highlighted_beard + scroller < ds_grid_width(global.all_beard_properties) - 1 && ds_grid_width(global.all_beard_properties) > menu_max_list){

		draw_sprite(spr_scroll_arrow, 0, GRID_SIZE * 22, GRID_SIZE * 17.5);

	}

	//Scroll up
	if(scroller > 0){

		draw_sprite_ext(spr_scroll_arrow, 0, GRID_SIZE * 22, GRID_SIZE * 6, 1, -1, 0, c_white, 1);

	}

}

draw_set_color(c_white);


