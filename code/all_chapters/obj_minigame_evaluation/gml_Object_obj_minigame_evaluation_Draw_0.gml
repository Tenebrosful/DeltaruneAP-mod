/// PATCH .ignore if !CHAPTER_4 && !CHAPTER_5

/// AFTER
#if CHAPTER_4
            if (currentphyspoints > _rscore[4] && !madesound)
#else
            if (currentphyspoints >= _rscore[4] && !madesound)
#endif
            {
                currentphysgrade = _trank;
                currentphychallengerank = 5;
                madesound = true;
                snd_play(snd_punchmed);
                snd_play(snd_applause_single);
            }
/// CODE
            AP_handle_lightner_live_rank(currentphychallengerank)
/// END