/// PATCH

/// REPLACE
            if (global.plot >= 180 && !solved)
/// CODE
            if (global.plot >= 180 && !solved && scr_keyitemcheck(30))
/// END

/// REPLACE
    scr_keyitemget(30);
    snd_play(snd_item);
    scr_speaker("no_name");
    msgsetloc(0, "* (SheetMusic was added to your KEY ITEMS.)/%", "obj_dw_church_organ_slash_Step_0_gml_428_0");
/// CODE
    global.customflags[31] = 1;
    snd_play(snd_item);
    scr_speaker("no_name");
    msgsetloc(0, "* (You got a Check.)/", "obj_dw_church_organ_slash_Step_0_gml_428_0");
    msgnextloc("* (The Check was sent to your Multiworld.)/%", "obj_dw_church_organ_slash_Step_0_gml_428_0");
    AP_sendLocation(205);
/// END

/// REPLACE
    else if (global.plot < 185)
/// CODE
    else if (global.plot < 185 && scr_keyitemcheck(30))
/// END