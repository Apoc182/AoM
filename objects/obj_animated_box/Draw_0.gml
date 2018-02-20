if(instance_exists(obj_fader)) exit;

if(box_in){
	scr_text_box(spr_text_box, x1, y1, x2, y2);
	
	if(play && !open){
		audio_play_sound(snd_box_open, 1000, false);
		play = false;
	}
	
	if(x1 > x1_open) x1 -= box_speed;
	if(x2 < x2_open) x2 += box_speed;
	if(x1 <= x1_open && x2 >= x2_open) x_open = true;
	
	if(x_open == true){
		if(y1 > y1_open) y1 -= box_speed;
		if(y2 < y2_open) y2 += box_speed;
	}
	
	if(y1 <= y1_open && y2 >= y2_open) y_open = true;
	
	if(x_open && y_open){
		open = true;
		play = true;
	}
}

if(box_out){
	scr_text_box(spr_text_box, x1, y1, x2, y2);
	
	if(play && y_open){
      audio_play_sound(snd_box_close, 1000, false);
      play = false;
	}
	
	if(y1 < y1_closed) y1 += box_speed;
	if(y2 > y2_closed) y2 -= box_speed;
	if(y1 >= y1_closed && y2 <= y2_closed) y_closed = true;
	
	if(y_closed = true){
		if(x1 < x1_closed) x1 += box_speed;
		if(x2 > x2_closed) x2 -= box_speed;
	}
	
	if(x1 >= x1_closed && x2 <= x2_closed) x_closed = true;
	
	if(x_closed && y_closed) closed = true;
}

if(closed)instance_destroy();

/// @description Insert description here
// You can write your code in this editor
