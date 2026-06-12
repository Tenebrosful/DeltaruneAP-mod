/// PATCH

/// AFTER
    blackall.image_blend = c_black;
/// CODE
    skip_pippins = instance_create(368, 176, obj_npc_room);
    skip_pippins.image_xscale = 2;
    skip_pippins.image_yscale = 2;
    skip_pippins.sprite_index = spr_pippins_idle2;
    skip_pippins.extflag = "skip_pippins";
/// END
