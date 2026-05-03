/// PATCH

/// REPLACE
    if (global.plot >= 280)
    {
        if (i != 1)
            _is_unlocked = false;
/// CODE
    if (global.plot >= 250)
    {
        if (i != 1)
            _is_unlocked = false;
/// END

/// REPLACE
if (global.plot >= 280)
    t_rank = false;
/// CODE
if (global.plot >= 250)
    t_rank = false;
/// END

/// REPLACE
if (global.plot >= 280)
{
    var snow_vfx = instance_create(0, 0, obj_dw_ch3_tvsnow);
    snow_vfx.bgdepth = 30000;
    z_rank_visible = scr_flag_get(board_flag) == 0 && scr_flag_get(1055) >= 3;
    
    with (zapper_marker)
        instance_destroy();
    
    with (zapper_readable)
        instance_destroy();
    
    var vending_machine_exchange = instance_create(850, 170, obj_npc_room);
    
    with (vending_machine_exchange)
    {
        extflag = "vending_exchange";
        sprite_index = spr_dw_tvland_preview_vending;
    }
}
/// CODE
if (global.plot >= 250)
{
    z_rank_visible = scr_flag_get(board_flag) == 0 && scr_flag_get(1055) >= 3;
    
    with (zapper_marker)
        instance_destroy();
    
    with (zapper_readable)
        instance_destroy();
}

if (global.plot >= 280)
{
    var snow_vfx = instance_create(0, 0, obj_dw_ch3_tvsnow);
    snow_vfx.bgdepth = 30000;
    var vending_machine_exchange = instance_create(850, 170, obj_npc_room);
    
    with (vending_machine_exchange)
    {
        extflag = "vending_exchange";
        sprite_index = spr_dw_tvland_preview_vending;
    }
}
/// END