draw_sprite_ext(spr_arrow, 0, arrow_tip_x, arrow_tip_y,
				arrow_xscale, arrow_yscale, rotation_from_right_counterclockwise, c_white, alpha_variance);
draw_set_alpha(alpha_variance);
draw_set_color(c_red);
draw_set_halign(fa_center);
draw_text(obj_default.x, obj_default.y - 300, tutorial_text[current_text_pos])
draw_set_halign(fa_left);
draw_set_color(c_black)
draw_set_alpha(1);