/// PATCH

/// APPEND
if (global.flag[1455] >= 50)
{
    netskie = instance_create(2620, 510, obj_readable_room1);
    netskie.sprite_index = spr_netskie_recruit;
    netskie.image_xscale = 2;
    netskie.image_yscale = 2;
    netskie.visible = 1;
    netskie.depth = 650;
    netskiewall = instance_create(800, 200, obj_solidblocksized);
    netskiewall.image_xscale = 2;
    netskiewall.image_yscale = 4;
}
/// END