/// PATCH

/// APPEND
if (global.customflags[global.custom_flags_indexes.ch5_used_ycomplist] == 0)
{
    flowery = instance_create(20, 1200, obj_readable_room1);
    flowery.sprite_index = spr_flowery_idle2;
    flowery.image_speed = 0.08333333333333333;
    flowery.image_xscale = 2;
    flowery.image_yscale = 2;
    flowery.visible = 1;
    flowery.depth = 650;
    flowerywall = instance_create(0, 1240, obj_solidblocksized);
    flowerywall.image_xscale = 2;
    flowerywall.image_yscale = 4;
}
/// END