if(show_escape_string){
	draw_text(GRID_SIZE, GRID_SIZE * 3, "Press ESC to skip tutorial");
}
draw_set_alpha(alpha_variance);
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_text((SCREEN_WIDTH)/2, (SCREEN_HEIGHT)/2, tutorial_text[current_text_pos])
draw_set_halign(fa_left);
draw_set_color(c_black)
draw_set_alpha(1);

//Fade it all
draw_sprite_ext(spr_lightning, 0, (SCREEN_WIDTH)/2, (SCREEN_HEIGHT)/2, 1, 1, 0, c_black, alpha_variance_again);

