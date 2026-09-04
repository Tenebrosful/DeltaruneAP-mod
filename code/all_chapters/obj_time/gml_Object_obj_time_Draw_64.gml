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

        text = ""
        switch (global.AP_connection_state)
        {
            default:
                text = "> Connecting...";
                break;

            case global.AP_ENUM_CONNECTION_STATE.ERROR_CREATING_SOCKET:
                text = "> Connection failed.\nCheck host and port" ;
                break;
            case global.AP_ENUM_CONNECTION_STATE.ERROR_CONNECTION_REFUSED:
                text = string("> Authentification failed.\n({0})", string(global.AP_connection_errors)) ;
                break;
            case global.AP_ENUM_CONNECTION_STATE.TRYING_TO_CONNECT:
                text = "> Trying to connect...";
                break;

            case global.AP_ENUM_CONNECTION_STATE.AWAITING_ARCHIPELAGO_RESPONSE:
                text = "> Awaiting Archipelago server response...";
                break;

            case global.AP_ENUM_CONNECTION_STATE.GOT_ROOMINFO:
                text = "> Sending authentification data...";
                break;

            case global.AP_ENUM_CONNECTION_STATE.CONNECTED:
                text = "> Connected to server!";
                break;
            
            case global.AP_ENUM_CONNECTION_STATE.WAITING_FOR_SCOUTING:
                text = "> Waiting for scouting data...";
                break;

            case global.AP_ENUM_CONNECTION_STATE.GOT_SCOUTING:
                text = string("> Waiting for datapackage\n({0}/{1}) {2}", global.AP_received_datapackage, global.AP_requested_datapackage, global.AP_last_datapackage_requested);
                break;

            case global.AP_ENUM_CONNECTION_STATE.GOT_DATA_PACKAGE:
                text = "> Parsing scouting data...";
                break;

            case global.AP_ENUM_CONNECTION_STATE.READY:
                if (!global.AP_loaded_unlocked_chapter)
                {
                    text = "> Waiting to receive\nunlocked chapters...";
                }
                break;
        }

        draw_text(ww - 10, 20, text);
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