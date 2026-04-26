/// PATCH

/// REPLACE
    scr_heal(arg0, arg1);
/// CODE
    healamt = arg1;
    star = arg0;
    scr_heal(star, healamt);
/// END

/// REPLACE
    healtext.healamt = arg1;
/// CODE
    healtext.healamt = healamt;
/// END