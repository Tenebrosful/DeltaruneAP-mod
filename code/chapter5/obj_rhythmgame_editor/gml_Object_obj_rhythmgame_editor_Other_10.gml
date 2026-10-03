/// PATCH

/// REPLACE
if (song_id == 12 || (song_id == 14 && instrument == 2))
    scr_rhythmgame_editor_save_simple(savestring + "_simple.txt");
/// CODE
if (song_id == 12 || song_id == 14 || song_id > 15)
    scr_rhythmgame_editor_save_simple(savestring + "_simple.txt");
/// END