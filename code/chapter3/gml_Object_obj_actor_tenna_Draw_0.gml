/// PATCH

/// REPLACE
                    if (!audio_is_playing(snd_tv_static))
                        mus_volume(global.batmusic[1], 0, 0);
/// CODE
                    if (!audio_is_playing(snd_tv_static))
                    {
                        mus_volume(global.batmusic[1], 0, 0);
                        
                        if (global.AP_ost_shuffle)
                            mus_volume(global.tenna_shuffled_music[1], 0, 0);
                    }
/// END