draw_set_alpha(alpha_variance);
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_text(window_get_width()/2, window_get_height()/2, tutorial_text[current_text_pos])
draw_set_halign(fa_left);
draw_set_color(c_black)
draw_set_alpha(1);

//Fade it all
draw_sprite_ext(spr_lightning, 0, window_get_width()/2, window_get_height()/2, 1, 1, 0, c_black, alpha_variance_again);
