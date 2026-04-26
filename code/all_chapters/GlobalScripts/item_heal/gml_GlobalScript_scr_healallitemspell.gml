/// PATCH

/// REPLACE
    scr_healall(arg0);
/// CODE
    var healamt = arg0;
    scr_healall(healamt);
/// END

/// REPLACE
                damage = arg0;
/// CODE
                damage = healamt;
/// END