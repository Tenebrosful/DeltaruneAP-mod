/// PATCH

/// APPEND

if (room == room_dw_cyber_post_music_boss_slide && x == 360 && y == 2560)
{
    if (global.customflags[36] == 1 && !d_ex())
    {
        with (mywall)
            instance_destroy();
        
        instance_destroy();
    }
}
/// END