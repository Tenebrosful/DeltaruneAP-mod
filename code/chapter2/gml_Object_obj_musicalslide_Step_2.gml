/// PATCH

/// REPLACE
        mus_initloop("cyber.ogg");
/// CODE
        mus_initloop("cyber.ogg", false);
/// END

/// BEFORE
    if (beats >= 32)
        fadingOut = true;
/// CODE
    /// change song right before the last note lands, otherwise you hear the drop for a single frame before it changes
    if (global.AP_ost_shuffle && soundTimeStep >= 16.39)
    {
        mus_volume(global.currentsong[1], 0, 0);
        instance_create(0, 0, obj_musicer_cyber);
        
        if (mus_get_name(global.AP_music[0]) == "cyber.ogg")
            audio_sound_set_track_position(global.AP_music[1], soundTimeStep);
    }
/// END