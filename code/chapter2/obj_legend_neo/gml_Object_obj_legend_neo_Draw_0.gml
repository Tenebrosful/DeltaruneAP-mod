/// PATCH

/// APPEND
camerax = camera_get_view_x(view_camera[0]);
cameray = camera_get_view_y(view_camera[0]);
cameraw = camera_get_view_width(view_camera[0]);
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(fnt_dotumche);
draw_set_halign(fa_center);
draw_text_transformed(cameraw / 2, 10, "Press BACKSPACE to skip", 0.5, 0.5);
draw_set_font(fnt_main);
draw_set_halign(fa_left);
/// END