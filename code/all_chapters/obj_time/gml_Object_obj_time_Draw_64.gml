/// PATCH

/// APPEND
if (scr_debug())
{
  draw_set_halign(fa_left)
  draw_set_font(fnt_tinynoelle)
  draw_set_color(c_white)
  draw_text(0, 0, "Plot: " + string(global.plot))
  draw_text(0, 8, "Room: " + string(room) + " (" + string(scr_get_id_by_room_index(room)) + ")")
  draw_text(0, 16, "Interact: " + string(global.interact))
  draw_text(0, 24, "Other Games: " + string(global.AP_other_games))

  if (variable_global_exists("AP_items_waiting_to_receive"))
    draw_text(0, 70, "Waiting items: " + string(global.AP_items_waiting_to_receive));
    
  if (variable_global_exists("AP_item_from_server"))
      draw_text(0, 78, "Server items: " + string(global.AP_item_from_server));
    
  if (variable_global_exists("AP_item_got_in_current_chapter"))
      draw_text(0, 85, "In chapter items: " + string(global.AP_item_got_in_current_chapter));
}

if (global.interact != 0)
{
    ww = camera_get_view_width(view_camera[0]);
    
    if (global.darkzone)
        ww = ww / 2;
    
    draw_set_font(fnt_tinynoelle);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(ww - 10, 0, "Stuck ? Press U and report the bug");
    draw_set_halign(fa_left);
}
/// END