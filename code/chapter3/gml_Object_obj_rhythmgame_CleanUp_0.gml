/// PATCH

/// REPLACE
    mus_volume(track1_instance, 1, 0);
    mus_volume(track2_instance, 0, 0);
/// CODE
    if (global.AP_ost_shuffle && !obj_tenna_enemy.minigameinsanity)
    {
        mus_volume(track1_instance, 0, 0);
        mus_volume(track2_instance, 0, 0);
        mus_volume(global.tenna_shuffled_music[1], 1, 0);
    }
    else
    {
        mus_volume(track1_instance, 1, 0);
        mus_volume(track2_instance, 0, 0);
    }
/// END