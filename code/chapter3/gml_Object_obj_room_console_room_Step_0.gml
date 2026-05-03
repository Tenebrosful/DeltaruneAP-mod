/// PATCH

/// REPLACE
                msgsetloc(0, "* (\\cYODDCONTROLLER\\cW was added to your \\cYKEY ITEMS\\cW.)/%", "obj_room_console_room_slash_Step_0_gml_34_0");
/// CODE
                msgsetloc(0, "* (The strange controller turned into a check.)/%", "obj_room_console_room_slash_Step_0_gml_34_0");
                msgnextloc("* (The \\cYCheck\\cW was sent to your \\cYMultiworld\\cW.)/%", "obj_room_console_room_slash_Step_0_gml_34_0");
/// END

/// REPLACE
            scr_keyitemget(16);
/// CODE
            scr_checkspot(141);
/// END