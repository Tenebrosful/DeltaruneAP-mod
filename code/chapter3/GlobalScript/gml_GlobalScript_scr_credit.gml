/// PATCH

/// REPLACE
    credits[3] = [new scr_credit([stringsetloc("-Guest Character Design-", "scr_credit_slash_scr_credit_gml_64_0")], [stringsetloc("(Lancer, Rudinn, Hathy)", "scr_credit_slash_scr_credit_gml_67_0"), stringsetloc("(Clover, King, Jevil)", "scr_credit_slash_scr_credit_gml_68_0"), stringset("Kanotynes")]), new scr_credit([stringsetloc("-Singing This Song-", "scr_credit_slash_scr_credit_gml_73_0")], [stringset("Laura Shigihara")])];
/// CODE
    var singing_this_song = stringsetloc("-Singing This Song-", "scr_credit_slash_scr_credit_gml_73_0");
    
    if (global.AP_ost_shuffle && variable_struct_get(global.AP_ost_mapping, "ch2_credits.ogg") != "ch2_credits.ogg" && variable_struct_get(global.AP_ost_mapping, "ch2_credits.ogg") != "dontforget.ogg")
        singing_this_song = stringset("-Singing (not) This Song-");
    
    credits[3] = [new scr_credit([stringsetloc("-Guest Character Design-", "scr_credit_slash_scr_credit_gml_64_0")], [stringsetloc("(Lancer, Rudinn, Hathy)", "scr_credit_slash_scr_credit_gml_67_0"), stringsetloc("(Clover, King, Jevil)", "scr_credit_slash_scr_credit_gml_68_0"), stringset("Kanotynes")]), new scr_credit([stringset(singing_this_song)], [stringset("Laura Shigihara")])];
/// END