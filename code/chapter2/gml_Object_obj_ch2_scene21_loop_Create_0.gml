/// PATCH

/// PREPEND
treasure = instance_create(2960, 240, obj_treasure_room)
treasure.itemtype = "check";
treasure.itemflag = 125;
treasure.t_itemid = 86;
/// END

/// REPLACE
    swan_shadow = scr_dark_marker(-200, swanboat.y, spr_swanboat_shadow);
/// CODE
    if (global.fastswan)
        swan_shadow = scr_dark_marker(-200, swanboat.y, spr_swanboat_shadow_fast);
    else
        swan_shadow = scr_dark_marker(-200, swanboat.y, spr_swanboat_shadow);
/// END