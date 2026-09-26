/// PATCH .ignore if CHAPTER_1 || CHAPTER_2

#if CHAPTER_3
/// REPLACE
if (global.plot >= 150 && room != room_dw_rhythm_empty && !tenna_boss)
/// CODE
if (global.plot >= 150 && room != room_dw_rhythm_empty && !tenna_boss && !global.retry_board)
/// END
#endif

/// REPLACE
        track1 = snd_init(track1_id);
        track2 = snd_init(track2_id);
/// CODE
        track1 = snd_init(track1_id, false);
        track2 = snd_init(track2_id, false);
/// END

/// REPLACE
            track1_solo = snd_init(track1_id);
            track2_solo = snd_init(track2_id);
/// CODE
            track1_solo = snd_init(track1_id, false);
            track2_solo = snd_init(track2_id, false);
/// END
