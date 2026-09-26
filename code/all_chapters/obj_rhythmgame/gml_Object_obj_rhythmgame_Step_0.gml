/// PATCH .ignore if CHAPTER_1 || CHAPTER_2

#if CHAPTER_3
/// REPLACE
            global.batmusic[0] = snd_init(track1_id);
/// CODE
            global.batmusic[0] = snd_init(track1_id, false);
/// END

/// REPLACE
            global.batmusic[2] = snd_init(track2_id);
/// CODE
            global.batmusic[2] = snd_init(track2_id, false);
/// END

/// AFTER
        mus_volume(track1_instance, main_vol * 0.9, 60);
        mus_volume(track2_instance, 0, 0);
/// CODE
        if (global.AP_ost_shuffle && !obj_tenna_zoom.minigameinsanity)
            mus_volume(global.tenna_shuffled_music[1], 0, 60);
/// END

/// REPLACE
        mus_volume(track1_instance, 1, 30);
        mus_volume(track2_instance, 0, 30);
    }
/// CODE
        if (global.AP_ost_shuffle && !obj_tenna_zoom.minigameinsanity)
        {
            mus_volume(track1_instance, 0, 30);
            mus_volume(track2_instance, 0, 30);
            mus_volume(global.tenna_shuffled_music[1], 1, 30);
        }
        else
        {
            mus_volume(track1_instance, 1, 30);
            mus_volume(track2_instance, 0, 30);
        }
    }
/// END
#endif

/// REPLACE
        track1 = snd_init(track1_id);
        track2 = snd_init(track2_id);
    }
    
    if (song_id == 0)
    {
        track1_solo = snd_init(track1_id);
        track2_solo = snd_init(track2_id);
/// CODE
        track1 = snd_init(track1_id, false);
        track2 = snd_init(track2_id, false);
    }
    
    if (song_id == 0)
    {
        track1_solo = snd_init(track1_id, false);
        track2_solo = snd_init(track2_id, false);
/// END