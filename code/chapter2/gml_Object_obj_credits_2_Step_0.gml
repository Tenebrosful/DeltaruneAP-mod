/// PATCH

/// REPLACE
    song1 = mus_play(song0);
/// CODE
    if (mus_get_name(song0) == "ch2_credits.ogg")
        song1 = mus_play(song0);
    else
        song1 = mus_loop(song0);
/// END

/// REPLACE
    line[5] = stringsetloc("-Singing This Song-", "obj_credits_2_slash_Step_0_gml_93_0");
/// CODE
    if (mus_get_name(song0) == "ch2_credits.ogg" || mus_get_name(song0) == "dontforget.ogg")
        line[5] = stringsetloc("-Singing This Song-", "obj_credits_2_slash_Step_0_gml_93_0");
    else
        line[5] = stringset("-Singing (not) This Song-");
/// END