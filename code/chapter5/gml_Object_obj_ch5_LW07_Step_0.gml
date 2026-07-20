/// PATCH

/// REPLACE
    con = 100;
    global.interact = 1;
    scr_speaker("lancer");
    msgsetloc(0, "\\E3* If you need any MP3s for her^1, you can use mine!/", "obj_ch5_LW07_slash_Step_0_gml_1009_0");
    scr_anyface_next("susie", "A");
    msgnextloc("\\EA* Heh^1, I think she likes..^1. rock music^1. You got any of that?/", "obj_ch5_LW07_slash_Step_0_gml_1011_0");
    scr_anyface_next("lancer", "3");
    msgnextloc("\\E3* No^1! But I can smash two stones together if it helps!/%", "obj_ch5_LW07_slash_Step_0_gml_1013_0");
    d_make();
/// CODE
    con = 100;
    global.interact = 1;
    global.msc = 1103;
    scr_text(global.msc);
    d_make();
/// END