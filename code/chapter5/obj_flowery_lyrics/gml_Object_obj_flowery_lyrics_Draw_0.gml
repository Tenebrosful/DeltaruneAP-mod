/// PATCH

/// PREPEND
if (lyric_count <= 1)
    exit;
/// END

/// REPLACE
    if (lyrics_index == 18 || lyrics_index == 37)
    {
        var _glowstart = 71;
        
        if (lyrics_index == 37)
            _glowstart = 191;
        
        _extra_pow = clamp01(trackpos - _glowstart);
        _textcol = merge_color(c_green, c_white, _extra_pow);
    }
/// CODE
    if (songname == "Flowerman_Arrangement.ogg")
    {
        if (lyrics_index == 18 || lyrics_index == 37) // "Flowers"
        {
            var _glowstart = 71;

            if (lyrics_index == 37)
                _glowstart = 191;

            _extra_pow = clamp01(trackpos - _glowstart);
            _textcol = merge_color(c_green, c_white, _extra_pow);
        }
    }
    if (songname == "ch3_karaoke_full.ogg" || songname == "ch3_karaoke_no_guitar.ogg")
    {
        if (lyrics_index == 999999999 || lyrics_index == 999999999)
        {
            var _glowstart = 999999999;

            if (lyrics_index == 999999999)
                _glowstart = 999999999;

            _extra_pow = clamp01(trackpos - _glowstart);
            _textcol = merge_color(c_green, c_white, _extra_pow);
        }
    }
/// END

/// REPLACE
    if (trackpos >= 166 || (trackpos >= 46 && trackpos < 120))
        strength = scr_movetowards(strength, 1, 0.015);
    else if (strength > 0)
        strength = 0;
/// CODE
    if (songname == "Flowerman_Arrangement.ogg")
    {
        if (trackpos >= 166 || (trackpos >= 46 && trackpos < 120))
            strength = scr_movetowards(strength, 1, 0.015);
        else if (strength > 0)
            strength = 0;
    }
    if (songname == "ch3_karaoke_full.ogg" || songname == "ch3_karaoke_no_guitar.ogg")
    {
        if (trackpos >= 99999 || (trackpos >= 999999 && trackpos < 99999))
            strength = scr_movetowards(strength, 1, 0.015);
        else if (strength > 0)
            strength = 0;
    }
    if (songname == "dontforget.ogg")
    {
        strength = 0;
    }
/// END