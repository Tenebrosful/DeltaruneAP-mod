/// PATCH

/// APPEND
if (global.plot >= 160)
{
    dw_leave_thing = instance_create(1240, 800, obj_readable_room1);
    scr_setparty(1, 1);
    pillar = instance_create(1360, 840, obj_dw_leave_ch4);
    pillar_active = true;
    pillar_trigger = instance_create(pillar.x - 160, pillar.y - 50, obj_trigger);
    
    with (pillar_trigger)
    {
        image_xscale = 10;
        image_yscale = 10;
        
        if (global.flag[1660] == 1)
            x += 40;
    }
    
    if (global.tempflag[58] == 1)
    {
        pillar_con = 30;
        global.tempflag[58] = 0;
        scr_setparty(1, 1);
    }
}

/// END

/// AFTER
    if (!snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init("church_wip.ogg");
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.7, 1);
    }
/// CODE
    if (global.AP_ost_shuffle)
    {
        if (!snd_is_playing(global.AP_music[1]))
        {
            global.AP_music[0] = snd_init("church_wip.ogg", false);
            global.AP_music[1] = mus_loop_ext(global.AP_music[0], 0, 1);
        }
    }
/// END