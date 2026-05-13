/// PATCH .ignore if CHAPTER_3 || CHAPTER_4

/// REPLACE
    scr_heal(star, arg0);
/// CODE
    var healamt = arg0;
    scr_heal(star, healamt);
/// END

/// REPLACE
            damage = arg0;
/// CODE
            damage = healamt;
/// END