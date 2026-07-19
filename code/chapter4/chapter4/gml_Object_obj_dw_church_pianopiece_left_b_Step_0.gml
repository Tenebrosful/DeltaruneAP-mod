/// PATCH

/// APPEND
if (con == -1)
{
    snd_play(snd_noise);
    global.flag[891] = 1;
    var xoff = -1040;
    var yoff = 120;
    global.tempflag[56] = 0;
    setxy(global.tempflag[50] + xoff, global.tempflag[51] + yoff, kris);
    setxy(global.tempflag[52] + xoff, global.tempflag[53] + yoff, susie);
    setxy(global.tempflag[54] + xoff, global.tempflag[55] + yoff, ralsei);
    scr_caterpillar_interpolate("all");
    
    with (obj_mainchara)
    {
        ignoredepth = 1;
        depth = 96399;
    }
    
    global.facing = 2;
    con = -1.01;
    
    with (scr_marker_ext(0, 0, 1021, room_width, room_height, 0, undefined, 0, 1000))
        scr_lerpvar("image_alpha", 1, 0, 6, -1, "out");
    
    with (scr_marker_ext(0, 0, 1021, room_width, room_height, 0, undefined, 16711680, 1010))
        scr_lerpvar("image_alpha", 1, 0, 2, -1, "out");
    
    prophecyactive = 1;
}

if (con == -1.01)
{
    timer++;
    
    if (timer == 15)
        prophecyactive = 1;
    
    if (timer == 30)
    {
        with (obj_mainchara)
            ignoredepth = 0;
        
        global.interact = 0;
        global.facing = 2;
    }
}

/// END