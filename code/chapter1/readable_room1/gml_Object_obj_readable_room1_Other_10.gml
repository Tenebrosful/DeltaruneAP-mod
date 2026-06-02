/// PATCH

/// REPLACE
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_22_0");
/// CODE
        global.msg[0] = "* It's a computer desk^1.&* There are many boxes under it filled with old books./"
        global.msg[1] = "* On the screen, there is a window called \"Archipelago Dragon Blazers Client\"./"
        global.msg[2] = "* But it's stuck trying to reconnect due to an internet outage./%"
/// END

/// AFTER
    if (x > 136)
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_45_0");
/// CODE
    if (x > 179)
        global.msg[0] = "* Non-binary rights./%";
/// END

/// REPLACE
if (room == room_dark2 || room == room_dark3 || room == room_dark7)
/// CODE
if (room == room_dark3 && x == 1120 && y == 920)
    global.msg[0] = "* (Don't forget the Glowshard.)/%";
else if (room == room_dark2 || room == room_dark3 || room == room_dark7)
/// END

/// REPLACE
    global.typer = 31;
    global.fc = 2;
    global.fe = 1;
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_446_0");
    global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_447_0");
/// CODE
    if (x == 300 && y == 240)
    {
        global.msc = 110;
        scr_text(110);
    }
    else
    {
        global.typer = 31;
        global.fc = 2;
        global.fe = 1;
        global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_446_0");
        global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_447_0");
    }
/// END

/// REPLACE
                global.msg[1] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_628_0");
/// CODE
                global.msg[2] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_628_0");
/// END

/// REPLACE
if (room == room_cc_6f)
/// CODE
if (room == room_cc_6f && y > 170)
/// END

/// AFTER
if (room == room_town_shelter)
    global.msg[0] = scr_84_get_lang_string("obj_readable_room1_slash_Other_10_gml_1383_0");

/// CODE
if (room == room_forest_area3 && x == 520 && y == 120)
    global.msg[0] = "* (Need the Bake Sale Ticket.)/%";

if (room == room_castle_darkdoor)
{
    global.msg[0] = "* (The door is locked.)/";
    global.msg[1] = "* (You need the Great Door Key.)/%";
}

if (room == room_cc_6f && y < 170)
{
    global.msg[0] = "* I messed up. please report this/%";
    
    if (global.MacGuffin_count < global.AP_macguffin_required[0])
    {
        global.msg[0] = "* (The door is locked.)/";
        global.msg[1] = "* (It seems you need more King-Shaped Key Pieces.)/%";
    }
    else if (global.flag[241] < 6 && global.AP_secret_bosses_mandatory)
    {
        global.msg[0] = "* (A chaotic energy is keeping this door locked.)/";
        global.msg[1] = "* (It seems the energy originates from the lowest floor of the castle...)/%";
    }
}

/// END
