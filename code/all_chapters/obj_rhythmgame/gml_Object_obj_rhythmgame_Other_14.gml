/// PATCH .ignore if !CHAPTER_3

/// AFTER
    mus_volume(track1_instance, 0, 60);
    mus_volume(track2_instance, 0, 60);
/// CODE
    if (global.AP_ost_shuffle)
        mus_volume(global.AP_music[1], 0, 60);
/// END