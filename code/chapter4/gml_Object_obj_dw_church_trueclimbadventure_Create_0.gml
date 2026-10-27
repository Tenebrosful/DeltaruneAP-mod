/// PATCH

/// REPLACE
scr_musicer("church_wip.ogg", 0.7);
/// CODE
instance_create(-200, 0, obj_musicer_dw_church)
/// END

/// APPEND

if (scr_flag_get(850) < 3)
{
    instance_create(1120, 640, obj_dw_church_jackenstein_pumpkinNPC);
    jackwall = instance_create(1040, 640, obj_solidblocksized);
    jackwall.image_xscale = 5;
    jackwall.image_yscale = 2;
}
/// END