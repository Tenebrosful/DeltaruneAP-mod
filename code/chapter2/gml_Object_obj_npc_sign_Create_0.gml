/// PATCH

/// REPLACE
    if (scr_armorcheck_inventory(16) == 1 || scr_armorcheck_equipped(1, 16) == 1)
/// CODE
    if (global.customflags[12] == 1)
/// END

/// REPLACE
{
    sprite_index = spr_npc_werewire;
    image_speed = 0;
}
/// CODE
{
    sprite_index = spr_npc_werewire;
    image_speed = 0;
    depth = 880000;
    
    if (global.customflags[11] == 1 && global.plot < 64)
        y = 1615;
    
    depth = 880000;
}
/// END

/// REPLACE
if (room == room_dw_cyber_post_music_boss_slide)
{
    sprite_index = spr_cyber_broken_camera;
    
    if (global.plot < 150)
        instance_destroy();
}
/// CODE
if (room == room_dw_cyber_post_music_boss_slide)
{
        instance_destroy();
}
/// END