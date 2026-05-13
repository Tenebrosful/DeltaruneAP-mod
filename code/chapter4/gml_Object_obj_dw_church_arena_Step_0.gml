/// PATCH

/// REPLACE
    c_msgsetloc(0, "* (You got the%%", "obj_dw_church_arena_slash_Step_0_gml_85_0");
/// CODE
    c_msgsetloc(0, "* (You sent a check%%", "obj_dw_church_arena_slash_Step_0_gml_85_0");
/// END

/// REPLACE
    
    if (!scr_keyitemcheck(13))
        scr_keyitemget(13);
    
    scr_get_shadow_crystal(global.chapter);
    scr_itemget_anytype(52, "weapon");
/// CODE
    noroom = 0;
/// END

/// REPLACE
    c_msgsetloc(0, "* (JusticeAxe was added to your WEAPONS.)/%", "obj_dw_church_arena_slash_Step_0_gml_1193_0");
/// CODE
    c_msgsetloc(0, "* (Susie got a Check.)/%", "obj_dw_church_arena_slash_Step_0_gml_1193_0");
/// END

/// REPLACE
    c_msgnextloc("* (ShadowCrystal was added to your KEY ITEMS.)/%", "obj_dw_church_arena_slash_Step_0_gml_1250_0");
/// CODE
    c_msgnextloc("* (Susie got another Check.)/%", "obj_dw_church_arena_slash_Step_0_gml_1250_0");
/// END

/// REPLACE
    c_msgsetloc(0, "\\E9* Heheh. That's what I was hoping./%", "obj_dw_church_arena_slash_Step_0_gml_1774_0");
    c_talk_wait();
/// CODE
    c_msgsetloc(0, "\\E9* Heheh. That's what I was hoping./", "obj_dw_church_arena_slash_Step_0_gml_1774_0");
    c_msgnextloc("\\E0* .../", "obj_dw_church_arena_slash_Step_0_gml_1701_0");
    c_msgnextloc("\\EA* Suppose you wanna go send these off^1, Kris./", "obj_dw_church_arena_slash_Step_0_gml_1701_0");
    c_msgnextloc("\\ER* The axe is cool^1, sure^1, but I don't need it./", "obj_dw_church_arena_slash_Step_0_gml_1701_0");
    c_msgnextloc("\\ES* I've shown how cool I am by beating that guy^1, y'know?/", "obj_dw_church_arena_slash_Step_0_gml_1701_0");
    c_msgnextloc("\\E2* Here you go./", "obj_dw_church_arena_slash_Step_0_gml_1701_0");
    c_facenext("no_name", 0);
    c_msgnextloc("* (The \\cYChecks\\cW were sent to your \\cYMultiworld\\cW.)/%", "obj_dw_church_arena_slash_Step_0_gml_1250_0");
    c_talk_wait();
    global.customflags[32] = true;
    global.customflags[34] = true;
    AP_sendLocation([206, 207]);
/// END