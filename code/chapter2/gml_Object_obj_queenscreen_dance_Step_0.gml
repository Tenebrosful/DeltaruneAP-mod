/// PATCH

/// REPLACE
    var audio_pos = audio_sound_get_track_position(global.currentsong[1]);
    
    if (audio_pos >= 16.5)
        countmod = 1.9508;
    else if (audio_pos >= 130)
        countmod = 0.4877;
/// CODE
    if (mus_get_name() == "mansion.ogg")
    {
        var audio_pos = audio_sound_get_track_position(global.currentsong[1]);
        
        if (audio_pos >= 16.5)
            countmod = 1.9508;
        else if (audio_pos >= 130)
            countmod = 0.4877;
    }
/// END