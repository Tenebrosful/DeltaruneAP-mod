/// PATCH

/// REPLACE
    msgsetloc(0, "\\EQ* You were cool when you played the piano earlier!/%", "obj_ch4_DCC03_slash_Step_0_gml_927_0");
/// CODE
    if (global.customflags[global.custom_flags_indexes.skipped_dark_sanctuary])
        msgsetloc(0, "\\EQ* You were very brave against the titan earlier!/%", "obj_ch4_DCC03_slash_Step_0_gml_927_0");
    else
        msgsetloc(0, "\\EQ* You were cool when you played the piano earlier!/%", "obj_ch4_DCC03_slash_Step_0_gml_927_0");
/// END