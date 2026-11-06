/// PATCH

/// REPLACE
scr_musicer(songfile);
/// CODE
if (global.AP_ost_shuffle && songfile == "church_wip.ogg")
    instance_create(-200, 0, obj_musicer_dw_church)
else
    scr_musicer(songfile);
/// END