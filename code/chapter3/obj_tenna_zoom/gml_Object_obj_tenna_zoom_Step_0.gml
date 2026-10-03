/// PATCH

/// AFTER
    if (zoomcon == 1)
    {
/// CODE
        if (global.AP_ost_shuffle && minigameinsanity)
        {
            mus_volume(global.batmusic[1], 1, 60);
            mus_volume(global.tenna_shuffled_music[1], 0, 60);
        }
/// END

/// AFTER
                if (obj_tenna_enemy.minigameinsanitycount == 5)
                {
/// CODE
                    if (global.AP_ost_shuffle)
                    {
                        mus_volume(global.batmusic[1], 0, 70);
                        mus_volume(global.tenna_shuffled_music[1], 1, 70);
                    }
/// END