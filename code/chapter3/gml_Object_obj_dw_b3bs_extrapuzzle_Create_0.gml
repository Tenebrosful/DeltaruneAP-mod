/// PATCH

/// REPLACE
trigger = instance_create(352, 256, obj_board_trigger);
/// CODE
trigger = instance_create(352, 256, obj_board_blocktrig);
/// END

/// REPLACE
    depth = 999998;
    sprite_index = spr_dw_puzzlecloset_mysterytile;
/// CODE
    depth = 999995;

/// END