/// PATCH

/// APPEND
orange = -4;

if ((global.customflags[global.custom_flags_indexes.ch5_helped_final_orange] == 0 && global.AP_macguffin_required[global.chapter - 1] > 0) || (global.AP_secret_bosses_mandatory && global.flag[1846] < 2))
{
    orange = instance_create(480, 260, obj_readable_room1);
    orange.sprite_index = spr_enemy_orange_walk_left_sad;
    orange.image_xscale = 2;
    orange.image_yscale = 2;
    orange.visible = 1;
    orange.depth = 650;
    orangewall = instance_create(480, 220, obj_solidblocksized);
    orangewall.image_xscale = 2;
    orangewall.image_yscale = 4;
}
/// END