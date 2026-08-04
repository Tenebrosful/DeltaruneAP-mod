/// PATCH

/// AFTER
if (con == 1.5)
{
/// CODE
    if (swantimer == 0 && global.fastswan && room == room_dw_mansion_acid_tunnel)
        snd_play(snd_dogrev);
/// END

/// REPLACE
    if (room >= room_dw_mansion_acid_tunnel)
        wx = 2;
/// CODE
    if (swan == 1)
    {
        if (global.fastswan)
            wx = 10;
        else
            wx = 2;
    }
/// END

/// REPLACE
    if (up_h())
        wy = -2;
    
    if (down_h())
        wy = 2;
/// CODE
    if (swan == 1)
    {
        if (up_h())
        {
            if (global.fastswan)
                wy = -10;
            else
                wy = -2;
        }
        
        if (down_h())
        {
            if (global.fastswan)
                wy = 10;
            else
                wy = 2;
        }
    }
    else
    {
        if (up_h())
            wy = -2;
        
        if (down_h())
            wy = 2;
    }
/// END