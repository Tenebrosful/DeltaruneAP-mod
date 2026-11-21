/// PATCH

/// BEFORE
    var audio_pos = audio_sound_get_track_position(global.currentsong[1]);
/// CODE
    var prev_song = mus_get_name();
/// END

/// REPLACE
    audio_sound_set_track_position(distort_audio[1], audio_pos);
/// CODE
    if (prev_song == "baci_perugina.ogg")
        audio_sound_set_track_position(distort_audio[1], audio_pos);
/// END