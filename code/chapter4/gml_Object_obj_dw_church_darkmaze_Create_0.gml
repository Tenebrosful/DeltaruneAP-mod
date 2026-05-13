/// PATCH

/// APPEND
if (global.plot >= 160)
{
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