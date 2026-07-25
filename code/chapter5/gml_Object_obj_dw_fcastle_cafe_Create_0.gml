/// PATCH

/// APPEND
if (global.customflags[global.custom_flags_indexes.ch5_used_gcomplist] == 0)
{
    flowery = instance_create(820, 140, obj_readable_room1);
    flowery.sprite_index = spr_flowery_idle;
    flowery.image_speed = 0.16666666666666666;
    flowery.image_xscale = 2;
    flowery.image_yscale = 2;
    flowery.visible = 1;
    flowery.depth = 650;
    flowerywall = instance_create(800, 200, obj_solidblocksized);
    flowerywall.image_xscale = 2;
    flowerywall.image_yscale = 4;
}
///END