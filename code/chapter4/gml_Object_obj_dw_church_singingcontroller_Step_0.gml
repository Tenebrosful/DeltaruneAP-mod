/// PATCH

/// REPLACE
trackpos = audio_sound_get_track_position(global.currentsong[1]);
/// CODE
if (global.AP_ost_shuffle)
    trackpos = audio_sound_get_track_position(global.dark_sanctuary_unshuffled_music[1]);
else
    trackpos = audio_sound_get_track_position(global.currentsong[1]);
/// END