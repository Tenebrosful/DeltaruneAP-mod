/// PATCH

/// APPEND
decemberskipcon = 0;
decemberskip = instance_create(200, 160, obj_readable_room1);
decemberskip.sprite_index = spr_mansion_switch;
decemberskip.visible = 1;
decemberskip.image_xscale = 2;
decemberskip.image_yscale = 2;
decemberskip.extflag = "decemberskip";

with (decemberskip)
    scr_depth();
/// END