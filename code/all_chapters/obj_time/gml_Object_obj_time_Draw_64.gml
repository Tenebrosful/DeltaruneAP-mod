/// PATCH

/// APPEND
if (scr_debug())
{
  draw_set_font(fnt_tinynoelle)
  draw_set_color(c_white)
  draw_text(0, 0, "Plot: " + string(global.plot))
  draw_text(0, 8, "Room: " + string(room) + " (" + string(scr_get_id_by_room_index(room)) + ")")
  draw_text(0, 16, "Interact: " + string(global.interact))
  if (variable_global_exists("AP_items_waiting_to_receive"))
    draw_text(0, 24, "Waiting items: " + string(global.AP_items_waiting_to_receive))
}
/// END