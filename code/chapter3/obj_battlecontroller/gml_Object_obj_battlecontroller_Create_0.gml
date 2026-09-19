/// PATCH

/// REPLACE
if (global.flag[9] == 1)
{
    var battlemusicvolume = 0.7;
    
    if (i_ex(obj_astream))
    {
        if (obj_astream.mystream == global.batmusic[0])
        {
            if (obj_astream.songname != "mus/battle.ogg")
                battlemusicvolume = 1;
        }
    }
    
    global.batmusic[1] = mus_loop_ext(global.batmusic[0], battlemusicvolume, 1);
}
/// CODE
if (global.flag[9] == 1)
{
    var battlemusicvolume = 0.7;
    
    if (i_ex(obj_astream))
    {
        if (obj_astream.mystream == global.batmusic[0])
        {
            if (obj_astream.songname != "mus/battle.ogg")
                battlemusicvolume = 1;
        }
    }
    
    global.batmusic[1] = mus_loop_ext(global.batmusic[0], battlemusicvolume, 1);
    
    if (global.AP_ost_shuffle && i_ex(obj_ch3_BTB06))
    {
        mus_volume(global.batmusic[1], 0, 0);
        global.tenna_shuffled_music[1] = mus_loop_ext(global.tenna_shuffled_music[0], battlemusicvolume, 1);
    }
}
/// END