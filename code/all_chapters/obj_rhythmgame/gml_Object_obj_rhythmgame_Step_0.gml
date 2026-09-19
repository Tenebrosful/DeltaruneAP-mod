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

/// REPLACE
        mus_volume(track1_instance, main_vol * 0.9, 60);
        mus_volume(track2_instance, 0, 0);
/// CODE
        mus_volume(track1_instance, main_vol * 0.9, 60);
        mus_volume(track2_instance, 0, 0);

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
if (loadsong == 1)
{
    if (tutorial >= 1 && audio_is_playing(global.currentsong[1]))
    {
        track1 = global.currentsong[0];
        track2 = snd_init(track2_id);
        trackstart = audio_sound_get_track_position(global.currentsong[1]);
        trackpos = trackstart;
    }
    else
    {
        track1 = snd_init(track1_id);
        track2 = snd_init(track2_id);
    }
    
    if (song_id == 0)
    {
        track1_solo = snd_init(track1_id);
        track2_solo = snd_init(track2_id);
    }
    
    loadsong = 2;
    playtimer = 0;
}
/// CODE
if (loadsong == 1)
{
    if (tutorial >= 1 && audio_is_playing(global.currentsong[1]))
    {
        track1 = global.currentsong[0];
        track2 = snd_init(track2_id);
        trackstart = audio_sound_get_track_position(global.currentsong[1]);
        trackpos = trackstart;
    }
    else
    {
        track1 = snd_init(track1_id, false);
        track2 = snd_init(track2_id, false);
    }
    
    if (song_id == 0)
    {
        track1_solo = snd_init(track1_id, false);
        track2_solo = snd_init(track2_id, false);
    }
    
    loadsong = 2;
    playtimer = 0;
}
/// END