/// PATCH

/// REPLACE
        alarm[4] = 100;
/// CODE
        alarm[4] = 120;
/// END

/// AFTER
    if (con == 105 && !d_ex())
    {
/// CODE
        snd_free_all();
/// END

/// BEFORE
if (con >= 50 && con < 100)
/// CODE
if (con >= 30 && con < 50)
{
    if (global.customflags[global.custom_flags_indexes.light_world_reminder] == 0 && obj_mainchara.y > 180)
    {
        global.customflags[global.custom_flags_indexes.light_world_reminder] = 1;
        con = 31;
        global.interact = 1;
        scr_speaker("no_name");
        global.msg[0] = "\\s0* (You realize that while there \\cYmay be important story details ahead\\cW...)/";
        global.msg[1] = "\\s1* (There \\cYwon't be any check locations in the Light World\\cW.)/";
        global.msg[2] = "* (You considered this carefully before leaving the temptation of your bed!)/%";
        d = instance_create(0, 0, obj_dialoguer);
    }
}

if (con == 31 && !instance_exists(obj_dialoguer))
{
    global.interact = 0;
    con = 30;
}
/// END