/// PATCH

/// REPLACE
        alarm[4] = 100;
/// CODE
        alarm[4] = 120;
/// END

/// AFTER
    if (con == 105 && !d_ex())
    {
/// CODE
        snd_free_all();
/// END