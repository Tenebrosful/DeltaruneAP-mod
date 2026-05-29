/// PATCH

/// REPLACE
                msgsetloc(0, "* (\\cYODDCONTROLLER\\cW was added to your \\cYKEY ITEMS\\cW.)/%", "obj_room_console_room_slash_Step_0_gml_34_0");
/// CODE
                msgsetloc(0, string("* (The strange controller turned into {0}.)/%", AP_get_location_reward_text(141)), "obj_room_console_room_slash_Step_0_gml_34_0");
/// END

/// REPLACE
            scr_keyitemget(16);
/// CODE
            AP_sendLocation(141);
/// END