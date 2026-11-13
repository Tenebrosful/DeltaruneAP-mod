/// PATCH

/// BEFORE
if (con < 0)
    exit;
/// CODE

if (con == -1)
{
    if (global.customflags[global.custom_flags_indexes.light_world_reminder] == 0 && obj_mainchara.y > 180)
    {
        global.customflags[global.custom_flags_indexes.light_world_reminder] = 1;
        con = -2;
        global.interact = 1;
        scr_speaker("no_name");
        msgset(0, "\\s0* (You realize that while there \\cYmay be important story details ahead\\cW...)/");
        msgnext("* (There \\cYwon't be any check locations in the Light World\\cW.)/");
        msgnext("* (You considered this carefully before leaving the temptation of your bed!)/%");
        d_make();
    }
}

if (con == -2 && !instance_exists(obj_dialoguer))
{
    global.interact = 0;
    con = -1;
}
/// END