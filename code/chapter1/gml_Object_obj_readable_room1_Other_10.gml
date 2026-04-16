/// PATCH

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
if (room == room_forest_savepoint1)
{
    if (scr_keyitemcheck(1002))
    {
        global.msg[0] = "* (You show the ponman the King Chess Piece.)/";
        global.msg[1] = "* (You convince the ponman that he told them to move.)/";
        global.msg[2] = "* (Suddenly...!)/%";
        global.customflags[4] = 1;
        
        with (mywall)
            instance_destroy();
    }
    else
    {
        global.msg[0] = "* (This ponman is unmoving.)/";
        global.msg[1] = "* (Perhaps seeing a King Chess Piece would convince them to leave?)/%";
    }
}

if (room == room_forest_area3 && x == 520 && y == 120)
    global.msg[0] = "* (Need the Bake Sale Ticket.)/%";

if (room == room_castle_darkdoor)
{
    global.msg[0] = "* (The door is locked.)/";
    global.msg[1] = "* (You need the Great Door Key.)/%";
}

if (room == room_forest_savepoint3)
    global.msg[0] = "* (You get the feeling that maybe you should get the Castle Key before continuing.)/%";

if (room == room_cc_6f && y < 170)
{
    global.msg[0] = "* I messed up. please report this/%";
    
    if (global.MacGuffin_count < scr_ap_get_macguffin_amount() && !file_exists("ch2.route"))
    {
        global.msg[0] = "* (The door is locked.)/";
        global.msg[1] = "* (It seems you need more King-Shaped Key Pieces.)/%";
    }
    else if (global.flag[241] < 6 && file_exists("super.flag"))
    {
        global.msg[0] = "* (A chaotic energy is keeping this door locked.)/";
        global.msg[1] = "* (It seems the energy originates from the lowest floor of the castle...)/%";
    }
}

/// END