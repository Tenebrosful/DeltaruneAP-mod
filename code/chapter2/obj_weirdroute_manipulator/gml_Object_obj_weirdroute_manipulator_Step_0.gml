/// PATCH

/// AFTER
if (global.flag[915] == 0 && global.flag[531] == 6)
{
    snd_play(snd_ominous);
    global.flag[915] = 1;
}
/// CODE
else if (global.AP_current_route == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE && global.flag[915] == 0 && global.flag[531] != 0)
{
    scr_sideb_fail();
}
/// END

/// REPLACE
    snd_play(snd_ominous_cancel);
/// CODE
{
    snd_play(snd_ominous_cancel);

    if (global.AP_current_route == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE)
    {
        snd_free_all();
        fadeout = instance_create(0, 0, obj_fadeout);
        fadeout.fadespeed = 1;
        fadeout.depth = -500;
        waittime = ceil(audio_sound_length(snd_ominous_cancel) * room_speed);
        scr_script_delayed(scr_load, waittime);
    }
}
/// END