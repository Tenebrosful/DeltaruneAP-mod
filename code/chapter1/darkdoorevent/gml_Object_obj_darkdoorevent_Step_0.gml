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