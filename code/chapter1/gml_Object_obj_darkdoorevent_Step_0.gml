/// PATCH

/// REPLACE
    with (r)
    {
        scr_halt();
        sprite_index = spr_ralseid;
    }
/// CODE
    with (r)
    {
        scr_halt();
    }
/// END

/// AFTER
    con = 7;
    alarm[4] = 40;
}

/// CODE
if (con == 7)
{
    with (r)
        image_alpha -= 0.04;
}

/// END

/// REPLACE
if (con == 20)
{
    image_index = 1;
    snd_play(snd_impact);
    instance_create(0, 0, obj_shake);
    con = 21;
    alarm[4] = 70;
}
/// CODE
if (con == 20)
{
    con = 21;
    alarm[4] = 70;
}
/// END

/// AFTER
    global.plot = 33;
    global.interact = 0;
    global.facing = 0;
/// CODE
    global.plot = 175;
    global.flag[217] = 1;
    global.flag[218] = 1;
    global.flag[234] = 1;
    global.flag[240] = 1;
    global.flag[209] = 1;
    global.charauto[2] = 0;
    scr_losechar();
    scr_getchar(2);
    scr_getchar(3);
/// END