/// PATCH

/// APPEND
if (scr_debug())
{
  draw_set_halign(fa_left)
  draw_set_font(fnt_tinynoelle)
  draw_set_color(c_white)
  draw_text(5, 0, "Plot: " + string(global.plot))
  draw_text(5, 8, "Room: " + room_get_name(room) + " " + string(room) + " (" + string(scr_get_id_by_room_index(room)) + ")")
  draw_text(5, 16, "Interact: " + string(global.interact))

  if (variable_global_exists("AP_items_waiting_to_receive"))
    draw_text(5, 25, "Waiting items: " + string(global.AP_items_waiting_to_receive));
    
  if (variable_global_exists("AP_item_from_server"))
      draw_text(5, 35, "Server items: " + string(global.AP_item_from_server));
    
  if (variable_global_exists("AP_item_got_in_current_chapter"))
      draw_text(5, 45, "Received items: " + string(global.AP_item_got_in_current_chapter));

  draw_text(5, 55, "Current Route: " + AP_resolve_route_name(global.AP_current_route))

  if (variable_global_exists("AP_debug_last_shuffled_ost"))
    draw_text(5, 65, "OST Shuffle: " + global.AP_debug_last_shuffled_ost + " -> " + global.AP_debug_last_shuffled_ost_result)
}

if (!global.AP_sync)
{
    ww = camera_get_view_width(view_camera[0]);
    
    if (global.darkzone)
        ww = ww / 2;
    
    draw_set_font(fnt_main);
    draw_set_color(c_red);
    draw_set_halign(fa_center);
    if (obj_archipelago_client.AP_isAuthenticated())
    {
        draw_text(ww - 10, 0, "SYNCHRONIZATION ITEMS MISMATCH DETECTED! PLEASE REPORT THIS.");
        draw_text(ww - 10, 10, "A FILE NAMED unsync.json HAS BEEN CREATED IN YOUR SAVEFILE FOLDER.");
    }
    else
    {
        draw_text(ww - 10, 0, "IT LOOKS LIKE YOU HAVE BEEN DISCONNECTED.");
        draw_text(ww - 10, 10, "ATTEMPTING TO RECONNECT, PLEASE BE PATIENT...");
    }
    draw_set_halign(fa_left);

    if (!global.AP_sync_output_done)
    {
        global.AP_sync_output_done = true;
        _content = {
            version: #GetVersion(),
            chapter: global.chapter,
            server_items: global.AP_item_from_server,
            save_items: global.AP_item_got_in_current_chapter,
            flags: global.flag,
            custom_flags: global.customflags,
            items: global.item,
            key_items: global.keyitem,
            weapons: global.weapon,
            armors: global.armor,
            storage: global.pocketitem
        }

        var json = json_stringify(_content)
        var file = file_text_open_write("unsync.json");
        file_text_write_string(file, json);
        file_text_close(file);
    }
}

if (global.interact != 0 && false)
{
    ww = camera_get_view_width(view_camera[0]);
    
    if (global.darkzone)
        ww = ww / 2;
    
    draw_set_font(fnt_tinynoelle);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_text(ww - 10, 0, "BETA VERSION ! Stuck ? Press U to unstuck and report the bug");
    draw_set_halign(fa_left);
}
/// END