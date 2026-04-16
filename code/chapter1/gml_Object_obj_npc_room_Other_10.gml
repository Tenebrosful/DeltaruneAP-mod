/// PATCH

/// REPLACE
        if (scr_itemcheck(6))
/// CODE
        if (scr_keyitemcheck(1004))
/// END

/// REPLACE
if (room == room_forest_savepoint2)
{
    if (x < 800)
/// CODE
if (room == room_forest_savepoint2)
{
    if (x < 800 && y < 100)
/// END

/// REPLACE
    if (x >= 920)
    {
        if (global.plot < 80)
        {
            global.msc = 330;
            scr_text(global.msc);
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_486_0");
        }
    }
/// CODE
    if (x >= 920)
    {
        if (global.flag[238] == 0 && global.plot < 154)
        {
            global.msc = 330;
            scr_text(global.msc);
        }
        else if (global.flag[238] == 0)
        {
            global.msg[0] = "* (There's still a cookie here.)/";
            global.msg[1] = "* (You sent the Check to your Multiworld.)/%";
            scr_checkspot(9);
            global.flag[238] = 1;
        }
        else
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_486_0");
        }
    }
    
    if (y >= 100)
    {
        global.msg[0] = "* Hey^1, welcome to the Bake Sale!/";
        global.msg[1] = "* Let me just see your ticket and.../";
        
        if (scr_keyitemcheck(1001) == 0)
        {
            global.msg[2] = "* Oh^1, you don't have one^1?&* That's a shame./";
            global.msg[3] = "* Come back when you have a ticket./%";
        }
        
        if (scr_keyitemcheck(1001))
        {
            global.msg[2] = "* Wait^1, you actually have a ticket?!/";
            global.msg[3] = "* Uh..^1. Hey^1, could you just look over there for a sec?/%";
            global.customflags[5] = 1;
        }
    }
/// END

/// APPEND
if (room == room_forest_savepoint3)
{
    global.msg[0] = "* Sigh.../";
    global.msg[1] = "* I really wanted to go to the Bake Sale.../";
    global.msg[2] = "* But when I got there^1, some guy started asking for a ticket./";
    global.msg[3] = "* Why do I even need a ticket^1?&* It's a bake sale!/%";
    
    if (talked >= 1 && scr_keyitemcheck(1001))
    {
        global.typer = 31;
        global.fe = 8;
        global.fc = 2;
        global.msg[0] = "* We have a ticket to the Bake Sale./";
        scr_ralface(1, 6);
        global.msg[2] = "* If we give you it^1, could you let us by?/";
        scr_noface(3);
        global.msg[4] = "* You guys would do that?!/";
        global.msg[5] = "* Man, I owe you one!/%";
        global.customflags[5] = 1;
        scr_keyitemremove(1001);
    }
}
/// END

/// AFTER
if (room == room_cc_rudinn)
{
    if (x <= (room_width / 2))
    {
        global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_675_0");
        global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_676_0");
    }
    else if (global.flag[520] == 0)
    {
/// CODE
        scr_checkspot(10);
/// END

/// AFTER
            global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_700_0");
/// CODE
            global.msg[7] = "* You sent a Check to your Multiworld./%";
/// END

/// BEFORE
        if (global.flag[243] == 3)
        {
            global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_718_0");
/// CODE
        scr_checkspot(10);
        
/// END