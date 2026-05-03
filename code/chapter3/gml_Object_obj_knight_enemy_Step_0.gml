/// PATCH

/// REPLACE
        if (scr_get_knight_total_attempts() > 0)
        {
            scr_gameover();
        }
/// CODE
        if (scr_get_knight_total_attempts() > 0 || global.AP_secret_bosses_mandatory)
        {
            scr_gameover();
        }
/// END