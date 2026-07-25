/// PATCH

/// APPEND
orange = instance_create(480, 260, obj_readable_room1);
orange.sprite_index = spr_enemy_orange_walk_left_sad;
orange.image_xscale = 2;
orange.image_yscale = 2;
orange.visible = 1;
orange.depth = 650;
orangewall = instance_create(480, 220, obj_solidblocksized);
orangewall.image_xscale = 2;
orangewall.image_yscale = 4;
/// END