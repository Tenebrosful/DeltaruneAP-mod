/// PATCH

/// REPLACE
    with (kknpc)
        instance_destroy();
/// CODE
    instance_deactivate_object(kknpc);
/// END

/// REPLACE
    kknpc = instance_create(355, 113, obj_npc_room_animated);
    kknpc.sprite_index = spr_npc_kk;
/// CODE
    instance_activate_object(kknpc);
/// END