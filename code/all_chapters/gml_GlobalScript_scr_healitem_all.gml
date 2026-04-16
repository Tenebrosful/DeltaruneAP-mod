/// PATCH

/// REPLACE
    scr_healall(arg0);
/// CODE
    healamt = arg0;
    scr_healall(healamt);
/// END

/// REPLACE
        healtext.healamt = arg0;
/// CODE
        healtext.healamt = healamt;
/// END