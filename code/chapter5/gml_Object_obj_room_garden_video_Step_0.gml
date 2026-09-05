/// PATCH

/// REPLACE
    var video_pos = video_get_position() / video_get_duration();
    var mus_pos = audio_sound_get_track_position(_mus_file[1]) / audio_sound_length(_mus_file[1]);
    var mus_offset = abs((round(video_pos * 100) / 100) - (round(mus_pos * 100) / 100));
    
    if (mus_offset >= 0.03)
        audio_sound_set_track_position(_mus_file[1], video_pos * audio_sound_length(_mus_file[1]));
/// CODE
    if (!global.AP_ost_shuffle)
    {
        var video_pos = video_get_position() / video_get_duration();
        var mus_pos = audio_sound_get_track_position(_mus_file[1]) / audio_sound_length(_mus_file[1]);
        var mus_offset = abs((round(video_pos * 100) / 100) - (round(mus_pos * 100) / 100));
        
        if (mus_offset >= 0.03)
            audio_sound_set_track_position(_mus_file[1], video_pos * audio_sound_length(_mus_file[1]));
    }
/// END