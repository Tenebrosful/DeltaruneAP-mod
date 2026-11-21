/// PATCH

/// REPLACE
    var _truetrackpos = audio_sound_get_track_position(global.batmusic[1]);
/// CODE
    if (!init_lyrics)
    {
        load_song_data();
        init_lyrics = true;
    }
    
    if (global.AP_ost_shuffle)
        var _truetrackpos = audio_sound_get_track_position(global.AP_music[1]);
    else
        var _truetrackpos = audio_sound_get_track_position(global.batmusic[1]);
/// END