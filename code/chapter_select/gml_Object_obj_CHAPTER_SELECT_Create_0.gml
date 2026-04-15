/// PATCH

/// REPLACE
        game_change("/chapter" + chapstring + "_windows", "-game data.win" + parameters);
/// CODE
        game_change("/chapter" + chapstring + "_windows", "-game data_ap.win" + parameters);
/// END

/// REPLACE
        game_change("chapter" + chapstring + "_mac", parameters);
/// CODE
        game_change("chapter" + chapstring + "_mac", "-game game_ap.ios" + parameters);
/// END