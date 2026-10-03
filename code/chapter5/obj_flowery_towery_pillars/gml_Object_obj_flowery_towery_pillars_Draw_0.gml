/// PATCH

/// REPLACE
        trackpos = scr_loop(trackpos + (delta_time / 1000000), 192.024);
/// CODE
        trackpos = scr_loop(trackpos + (delta_time / 1000000), song_length);
/// END

/// REPLACE
if (trackpos >= 95 && trackpos < 143 && bg_change < 90)
    bg_change++;
else if (bg_change > 0 && bg_change < 150 && trackpos > 143)
    bg_change++;

if (bg_change == 150 || trackpos < 95)
    bg_change = 0;
/// CODE
if (mus_get_name(global.batmusic[0]) == "Flowerman_Arrangement.ogg")
{
    if (trackpos >= 95 && trackpos < 143 && bg_change < 90)
        bg_change++;
    else if (bg_change > 0 && bg_change < 150 && trackpos > 143)
        bg_change++;
    
    if (bg_change == 150 || trackpos < 95)
        bg_change = 0;
}
else
{
    if (bg_change_lockout <= 0 && trackpos < song_prevpos)
    {
        bg_changing = 1;
        bg_change_lockout = 900;
    }
    
    if (bg_changing == 1 && bg_change < 90)
        bg_change++;
    else if (bg_changing == 1 && bg_change > 0 && bg_change < 150)
        bg_change++;
    
    if (bg_changing == 1 && (bg_change == 90 || bg_change == 150))
        bg_changing = 0;
    
    if (bg_change == 150)
        bg_change = 0;
}

song_prevpos = _truetrackpos;
/// END